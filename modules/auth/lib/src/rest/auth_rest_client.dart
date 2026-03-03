import 'dart:ui';

import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'auth_rest_client.g.dart';

@RestApi(baseUrl: null)
abstract class AuthRestClient {
  factory AuthRestClient(Dio dio, {String baseUrl}) = _AuthRestClient;

  @GET("rest/s1/abk/100/CheckEmail")
  @Extra({'noApiKey': true})
  Future<Map<String, bool>> checkEmail({@Query('email') required String email});

  @GET("rest/s1/abk/100/Authenticate")
  Future<Authenticate> getAuthenticate({
    @Query('classificationId') required String classificationId,
  });

  @POST("rest/s1/abk/100/Register")
  @Extra({'noApiKey': true})
  @FormUrlEncoded()
  Future<Authenticate> register({
    @Field() required String classificationId,
    @Field() required String firstName,
    @Field() required String lastName,
    @Field() required String email,
    @Field() String? companyPartyId, // required for other than admin
    @Field() String? newPassword,
    @Field('userGroupId') UserGroup? userGroup, // if admin also company
    @Field() String? timeZoneOffset,
    @Field() Locale? locale,
  });

  @POST("rest/s1/abk/100/Login")
  @Extra({'noApiKey': true})
  @FormUrlEncoded()
  Future<Authenticate> login({
    @Field() required String username,
    @Field() required String password,
    @Field() String? creditCardNumber,
    @Field() String? creditCardType,
    @Field() String? nameOnCard,
    @Field() String? expireMonth,
    @Field() String? expireYear,
    @Field() String? cVC,
    @Field() String? plan,
    @Field() String? companyName,
    @Field() String? currencyId,
    @Field() bool? demoData,
    @Field() required String classificationId,
    @Field() String? timeZoneOffset,
  });

  @POST("rest/s1/abk/100/Logout")
  Future<String> logout();

  @POST("rest/s1/abk/100/ResetPassword")
  @Extra({'noApiKey': true})
  Future<String> resetPassword({@Field() required String username});

  @POST("rest/s1/abk/100/Password")
  @Extra({'noApiKey': true})
  Future<Authenticate> updatePassword({
    @Field() required String username,
    @Field() required String oldPassword,
    @Field() required String newPassword,
    @Field() required String classificationId,
  });
  // user
  @GET("rest/s1/abk/100/User")
  Future<Users> getUser({
    @Query('userPartyId') String? partyId,
    @Query('role') Role? role,
    @Query('start') int? start,
    @Query('limit') int? limit,
    @Query('firstName') String? firstName,
    @Query('lastName') String? lastName,
    @Query('search') String? searchString,
    @Query('isForDropDown') bool? isForDropDown,
    @Query('loginOnly') bool? loginOnly,
  });

  @POST("rest/s1/abk/100/User")
  Future<User> createUser({@Field() required User user});

  @PATCH("rest/s1/abk/100/User")
  Future<User> updateUser({@Field() required User user});

  @DELETE("rest/s1/abk/100/User")
  Future<User> deleteUser({
    @Field() required String partyId,
    @Field() required bool deleteCompanyToo,
  });





  @GET("rest/s1/abk/100/Companies")
  @Extra({'noApiKey': true})
  Future<Companies> getCompanies({
    @Query('mainCompanies') bool? mainCompanies,
    @Query('searchString') String? searchString,
    @Query('start') int? start,
    @Query('limit') int? limit,
  });

  @GET("rest/s1/abk/100/Products")
  Future<ABKServices> getProduct({
    @Query('start') int? start,
    @Query('limit') int? limit,
    @Query('companyPartyId') String? companyPartyId,
    @Query('ownerPartyId') String? ownerPartyId,
    @Query('isForDropDown') bool? isForDropDown,
    @Query('search') String? searchString,
    @Query('classificationId') String? classificationId,
    @Query('categoryId') String? categoryId,
    @Query('productId') String? productId,
    @Query('productTypeId') String? productTypeId,
    @Query('assetClassId') String? assetClassId,
  });

  @GET("rest/s1/abk/100/Products")
  Future<ABKServices> getProducts({
    @Query('limit') int? limit,
    @Query('classificationId') String? classificationId,
  });


}
