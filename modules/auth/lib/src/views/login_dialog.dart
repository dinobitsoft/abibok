import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:locale/l10n/generated/core_localizations.dart'
    show CoreLocalizations;
import 'package:payment/payment.dart';
import 'package:widgets/widgets.dart';

class LoginDialog extends StatefulWidget {
  const LoginDialog({super.key});

  @override
  LoginDialogState createState() => LoginDialogState();
}

class LoginDialogState extends State<LoginDialog> {
  final _loginFormKey = GlobalKey<FormBuilderState>();
  final _moreInfoFormKey = GlobalKey<FormBuilderState>();
  final _changePasswordFormKey = GlobalKey<FormBuilderState>();
  final builderFormKey = GlobalKey<FormBuilderState>();
  late Authenticate authenticate;
  List<Company>? companies;
  String? oldPassword;
  late bool _obscureText;
  late bool _obscureText3;
  late bool _obscureText4;
  late AuthBloc _authBloc;
  late Currency _currencySelected;
  late bool _demoData;
  late String _classification;
  late User? user;
  late String? moquiSessionToken; // in login process used for password
  String? furtherAction;
  String? username;
  String? password;
  late DataFetchBloc productBloc;
  CoreLocalizations? _localizations;

  @override
  void initState() {
    super.initState();
    _authBloc = context.read<AuthBloc>();
    try {
      _classification = context.read<String>();
    } catch (e) {
      _classification = 'AppSupport';
    }
    authenticate = _authBloc.state.authenticate ?? Authenticate();
    _currencySelected = currencies[1];
    _demoData = kReleaseMode ? false : true;
    _obscureText = true;
    _obscureText3 = true;
    _obscureText4 = true;
    productBloc = context.read<DataFetchBloc<ABKServices>>()
      ..add(
        GetDataEvent(
          () => context.read<AuthRestClient>().getProduct(ownerPartyId: 'ABK'),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    _localizations = CoreLocalizations.of(context);
    return ScaffoldMessenger(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            switch (state.status) {
              case AuthStatus.failure:
                HelperFunctions.showMessage(
                  context,
                  state.message ?? "Login error",
                  Colors.red,
                );
                break;

              case AuthStatus.authenticated:
                Navigator.of(context).pop();
                break;

              case AuthStatus.loading:
                break;

              default:
                if (state.message != null && state.message!.isNotEmpty) {
                  HelperFunctions.showMessage(
                    context,
                    state.message!,
                    Colors.green,
                  );
                }
            }
          },
          buildWhen: (previous, current) {
            // Rebuild the UI only when the (apikey=furtherAction) changes
            return previous.authenticate?.apiKey !=
                    current.authenticate?.apiKey ||
                current.status == AuthStatus.loading ||
                current.status == AuthStatus.failure;
          },
          builder: (context, state) {
            furtherAction = state.authenticate?.apiKey;
            user = state.authenticate?.user;
            moquiSessionToken = state.authenticate?.moquiSessionToken;

            return Stack(
              children: [
                Dialog(
                  insetPadding: const EdgeInsets.all(10),
                  child: switch (furtherAction) {
                    'moreInfo' => moreInfoForm(),
                    'paymentFirst' => paymentForm(paymentFirst: true),
                    'paymentExpired' => paymentForm(expired: true),
                    'paymentExpiredFinal' => paymentForm(finalExpired: true),
                    'passwordChange' => changePasswordForm(
                      state.authenticate?.user?.loginName ?? '',
                      password ?? '',
                    ),
                    _ => loginForm(),
                  },
                ),
                if (state.status == AuthStatus.loading)
                  const Center(child: LoadingIndicator()),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget changePasswordForm(String username, String oldPassword) {
    return popUp(
      height: 500,
      context: context,
      title: _localizations!.createPassword,
      child: FormBuilder(
        key: _changePasswordFormKey,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            Text(_localizations!.username(username)),
            const SizedBox(height: 20),
            FormBuilderTextField(
              name: 'password',
              key: const Key("password"),
              autofocus: true,
              obscureText: _obscureText3,
              decoration: InputDecoration(
                labelText: _localizations!.password,
                helperText: _localizations!.passwordHelper,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText3 = !_obscureText3;
                    });
                  },
                  child: Icon(
                    _obscureText3 ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(
                  errorText: _localizations!.passwordError,
                ),
                (value) {
                  if (value != null) {
                    final regExpRequire = RegExp(
                      r'^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).{8,}',
                    );
                    if (!regExpRequire.hasMatch(value)) {
                      return _localizations!.passwordValidationError;
                    }
                  }
                  return null;
                },
              ]),
            ),
            const SizedBox(height: 20),
            FormBuilderTextField(
              name: 'password2',
              key: const Key("password2"),
              obscureText: _obscureText4,
              decoration: InputDecoration(
                labelText: _localizations!.verifyPassword,
                helperText: _localizations!.verifyPasswordHelper,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText4 = !_obscureText4;
                    });
                  },
                  child: Icon(
                    _obscureText4 ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(
                  errorText: _localizations!.verifyPasswordError,
                ),
                (value) {
                  final password = _changePasswordFormKey
                      .currentState
                      ?.fields['password']
                      ?.value;
                  if (value != null && password != null && value != password) {
                    return _localizations!.passwordMismatch;
                  }
                  return null;
                },
              ]),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              child: Text(_localizations!.submitNewPassword),
              onPressed: () {
                if (_changePasswordFormKey.currentState!.saveAndValidate()) {
                  final formData = _changePasswordFormKey.currentState!.value;
                  _authBloc.add(
                    AuthChangePassword(
                      username,
                      oldPassword,
                      formData['password2']?.toString() ?? '',
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget moreInfoForm() {
    String defaultCompanyName = kReleaseMode ? '' : 'Main Company';
    return popUp(
      height: user?.userGroup == UserGroup.admin ? 450 : 350,
      context: context,
      title: _localizations!.completeRegistration,
      child: FormBuilder(
        key: _moreInfoFormKey,
        initialValue: {
          'companyName': defaultCompanyName,
          'currency': _currencySelected,
          'demoData': _demoData,
        },
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          key: const Key('listView'),
          child: Column(
            key: const Key('moreInfo'),
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(height: 10),
                  Text(_localizations!.welcome, textAlign: TextAlign.center),
                  Text("${user?.firstName} ${user?.lastName}"),
                  if (user?.userGroup == UserGroup.admin)
                    Text(_localizations!.enterCompanyAndCurrency),
                  if (user?.userGroup != UserGroup.admin)
                    Text(_localizations!.enterCompanyName),
                  const SizedBox(height: 10),
                  FormBuilderTextField(
                    name: 'companyName',
                    key: const Key('companyName'),
                    decoration: InputDecoration(
                      labelText: _localizations!.businessCompanyName,
                    ),
                    validator: user?.userGroup == UserGroup.admin
                        ? FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: _localizations!.businessNameError,
                            ),
                          ])
                        : null,
                  ),
                  if (user?.userGroup == UserGroup.admin)
                    const SizedBox(height: 10),
                  if (user?.userGroup == UserGroup.admin)
                    FormBuilderDropdown<Currency>(
                      name: 'currency',
                      key: const Key('currency'),
                      decoration: InputDecoration(
                        labelText: _localizations!.currency,
                      ),
                      hint: Text(_localizations!.currency),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: _localizations!.currencyError,
                        ),
                      ]),
                      items: currencies.map((item) {
                        return DropdownMenuItem<Currency>(
                          value: item,
                          child: Text(item.description!),
                        );
                      }).toList(),
                      onChanged: (Currency? newValue) {
                        setState(() {
                          _currencySelected = newValue!;
                        });
                      },
                    ),
                  const SizedBox(height: 10),
                  if (user?.userGroup == UserGroup.admin)
                    FormBuilderCheckbox(
                      name: 'demoData',
                      key: const Key('demoData'),
                      title: Text(_localizations!.generateDemoData),
                      decoration: InputDecoration(
                        labelText: _localizations!.demoData,
                        border: InputBorder.none,
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          _demoData = value ?? false;
                        });
                      },
                    ),
                  const SizedBox(height: 10),
                  OutlinedButton(
                    key: const Key('continue'),
                    child: Text(_localizations!.continueButton),
                    onPressed: () {
                      if (_moreInfoFormKey.currentState!.saveAndValidate()) {
                        final formData = _moreInfoFormKey.currentState!.value;

                        context.read<AuthBloc>().add(
                          AuthLogin(
                            user!.loginName!,
                            moquiSessionToken!, // returned password
                            companyName:
                                formData['companyName']?.toString() ?? '',
                            currency: formData['currency'] ?? _currencySelected,
                            demoData: formData['demoData'] ?? _demoData,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginForm() {
    String defaultUsername =
        authenticate.user?.loginName ??
        (kReleaseMode
            ? ''
            : _classification == 'AppSupport'
            ? 'SystemSupport'
            : 'test@example.com');
    String defaultPassword = kReleaseMode
        ? ''
        : _classification == 'AppSupport'
        ? 'moqui'
        : 'qqqqqq9!';

    return popUp(
      height: isPhone(context) ? 300 : 280,
      width: isPhone(context) ? 400 : 600,
      context: context,
      title: _localizations!.loginWithExistingUserName,
      child: FormBuilder(
        key: _loginFormKey,
        initialValue: {
          'username': defaultUsername,
          'password': defaultPassword,
        },
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          key: const Key('listView'),
          child: Column(
            children: <Widget>[
              FormBuilderTextField(
                name: 'username',
                autofocus: defaultUsername.isEmpty,
                key: const Key('username'),
                decoration: InputDecoration(
                  labelText: _localizations!.usernameEmail,
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: _localizations!.usernameEmailError,
                  ),
                ]),
              ),
              FormBuilderTextField(
                name: 'password',
                autofocus: defaultUsername.isNotEmpty,
                key: const Key('password'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: _localizations!.passwordError2,
                  ),
                ]),
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: _localizations!.password,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      key: const Key('login'),
                      child: Text(_localizations!.login),
                      onPressed: () {
                        print("LOGIN CLICKED");
                        print("USERNAME: $username");
                        print("PASSWORD: $password");
                        if (_loginFormKey.currentState!.saveAndValidate()) {
                          final formData = _loginFormKey.currentState!.value;
                          username =
                              formData['username']?.toString().trim() ?? '';
                          password =
                              formData['password']?.toString().trim() ?? '';
                          print("SENDING LOGIN EVENT");

                          _authBloc.add(
                            AuthLogin(
                              formData['username']?.toString().trim() ?? '',
                              formData['password']?.toString().trim() ?? '',
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  child: Text(_localizations!.forgotPassword),
                  onTap: () async {
                    String username =
                        authenticate.user?.loginName ??
                        (kReleaseMode ? '' : 'test@example.com');
                    await showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (BuildContext context) {
                        return BlocProvider.value(
                          value: _authBloc,
                          child: SendResetPasswordDialog(username),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget paymentForm({
    bool paymentFirst = false,
    bool expired = false,
    bool finalExpired = false,
  }) {
    bool test = GlobalConfiguration().get("test");
    String testCreditCardNumber = kReleaseMode && !test
        ? ''
        : '4012888888881881';
    String testExpiryDate = kReleaseMode && !test ? '' : '11/33';
    String testCvv = kReleaseMode && !test ? '' : '123';
    String testNameOnCart = kReleaseMode && !test ? '' : 'Test Customer';
    PaymentMethod? paymentMethod = authenticate.user?.paymentMethod;
    ABKServices servicesList = productBloc.state.data as ABKServices;
    List<ABKService> services = List.from(servicesList.products)
      ..sort(
        (a, b) => ((a.price ?? Decimal.zero).toDouble()).compareTo(
          (b.price ?? Decimal.zero).toDouble(),
        ),
      );

    return popUp(
      height: isPhone(context) ? 700 : 700,
      width: 400,
      context: context,
      title: _localizations!.subscription,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FormBuilder(
          autovalidateMode: AutovalidateMode.onUnfocus,
          key: builderFormKey,
          initialValue: {
            'cardNumber': testCreditCardNumber,
            'expiryDate': testExpiryDate,
            'cardHolderName': testNameOnCart,
            'cvvCode': testCvv,
          },
          child: SingleChildScrollView(
            key: const Key('paymentForm'),
            child: Column(
              children: <Widget>[
                if (paymentMethod != null)
                  Center(
                    child: Text(
                      _localizations!.currentPaymentMethod(
                        paymentMethod.ccDescription!,
                      ),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                if (paymentFirst)
                  Center(
                    child: Text(
                      kReleaseMode && GlobalConfiguration().get("test") == false
                          ? _localizations!.trialPeriod
                          : _localizations!.testSystem,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                const SizedBox(height: 10),
                FormBuilderCheckboxGroup(
                  key: const Key('plan'),
                  initialValue: [services[1].serviceId],
                  name: 'plan',
                  options: [
                    for (ABKService service in services)
                      FormBuilderFieldOption(
                        value: service.serviceId,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: service.description!
                              .split('|')
                              .asMap()
                              .entries
                              .map(
                                (entry) => entry.key == 0
                                    ? Text(
                                        '\n+${entry.value}',
                                        style: const TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : Text(entry.value),
                              )
                              .toList(),
                        ),
                      ),
                  ],
                  decoration: InputDecoration(
                    labelText: _localizations!.paymentPlan,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                  onChanged: (value) {
                    // FormBuilder automatically handles form state
                  },
                  validator: FormBuilderValidators.compose([
                    (val) {
                      if (val == null || val.isEmpty || val.length > 1) {
                        return _localizations!.selectPlanError;
                      }
                      return null;
                    },
                  ]),
                ),
                const SizedBox(height: 10),
                InputDecorator(
                  decoration: InputDecoration(
                    labelText: _localizations!.creditCardInfo,
                    hintText: _localizations!.creditCardDetails,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FormBuilderTextField(
                        name: 'cardNumber',
                        decoration: InputDecoration(
                          labelText: _localizations!.number,
                          hintText: _localizations!.numberHint,
                        ),
                        validator: FormBuilderValidators.creditCard(),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: FormBuilderTextField(
                              name: 'expiryDate',
                              decoration: InputDecoration(
                                labelText: _localizations!.expiryDate,
                                hintText: _localizations!.expiryDateHint,
                              ),
                              validator:
                                  FormBuilderValidators.creditCardExpirationDate(),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: FormBuilderTextField(
                              name: 'cvvCode',
                              decoration: InputDecoration(
                                labelText: _localizations!.cvvCode,
                                hintText: _localizations!.cvvHint,
                              ),
                              validator: FormBuilderValidators.creditCardCVC(),
                            ),
                          ),
                        ],
                      ),
                      FormBuilderTextField(
                        name: 'cardHolderName',
                        decoration: InputDecoration(
                          labelText: _localizations!.nameOnCard,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Row(
                          children: [
                            if (expired)
                              OutlinedButton(
                                key: const Key('payWeek'),
                                child: Text(_localizations!.payWithinWeek),
                                onPressed: () {
                                  context.read<AuthBloc>().add(
                                    AuthLogin(
                                      user!.loginName!,
                                      moquiSessionToken!, // returned password
                                      creditCardNumber: 'payWithinWeek',
                                    ),
                                  );
                                },
                              ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: OutlinedButton(
                                key: const Key('pay'),
                                child: Text(_localizations!.registerAndCharge),
                                onPressed: () {
                                  if (builderFormKey.currentState!
                                      .saveAndValidate()) {
                                    final formData =
                                        builderFormKey.currentState!.value;

                                    final selectedPlan =
                                        formData['plan'] as List?;
                                    final expiryDateValue =
                                        formData['expiryDate']?.toString() ??
                                        '';
                                    final expiryParts = expiryDateValue.split(
                                      '/',
                                    );

                                    context.read<AuthBloc>().add(
                                      AuthLogin(
                                        user!.loginName!,
                                        moquiSessionToken!, // returned password
                                        creditCardNumber:
                                            formData['cardNumber']
                                                ?.toString()
                                                .replaceAll(' ', '') ??
                                            '',
                                        nameOnCard:
                                            formData['cardHolderName']
                                                ?.toString() ??
                                            '',
                                        cVC:
                                            formData['cvvCode']?.toString() ??
                                            '',
                                        plan: selectedPlan?.isNotEmpty == true
                                            ? selectedPlan![0]
                                            : '',
                                        expireMonth: expiryParts.isNotEmpty
                                            ? expiryParts[0]
                                            : '',
                                        expireYear: expiryParts.length > 1
                                            ? expiryParts[1]
                                            : '',
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
