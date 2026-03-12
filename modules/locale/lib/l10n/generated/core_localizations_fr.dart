// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'core_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class CoreLocalizationsFr extends CoreLocalizations {
  CoreLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String aboutApp(String appName) {
    return 'À propos de $appName';
  }

  @override
  String get aboutAbibok => 'À propos de Abibok';

  @override
  String get accounts => 'Comptes';

  @override
  String get addNew => 'Ajouter nouveau';

  @override
  String get andAtLeastOne => 'et au moins un ';

  @override
  String get backendServer => 'Serveur backend';

  @override
  String get balanceSheet => 'Bilan';

  @override
  String get balanceSummary => 'Résumé du solde';

  @override
  String get businessCompanyName => 'Nom de l\'entreprise commerciale requis !';

  @override
  String get businessNameError => 'Le nom de l\'entreprise est requis !';

  @override
  String get cancel => 'Annuler';

  @override
  String get cannotLoadRestRequests =>
      'Impossible de charger les requêtes REST !';

  @override
  String get chat => 'Chat #';

  @override
  String get chatServer => 'Serveur de chat';

  @override
  String get completeRegistration => 'Finaliser l\'inscription';

  @override
  String get companyPartyId => 'ID de partie de l\'entreprise';

  @override
  String get continueButton => 'Continuer';

  @override
  String get contributing => 'Contribuer';

  @override
  String copyright(String year) {
    return '© $year Abibok.com';
  }

  @override
  String get create => 'Créer';

  @override
  String get createPassword => 'Créer un mot de passe';

  @override
  String get creditCardDetails => 'Détails de la carte de crédit';

  @override
  String get creditCardInfo => 'Informations sur la carte de crédit';

  @override
  String get currency => 'Devise';

  @override
  String get currencyError => 'La devise est requise !';

  @override
  String currentPaymentMethod(String method) {
    return 'Mode de paiement actuel : $method';
  }

  @override
  String get customer => 'Client';

  @override
  String get cvvCode => 'CVV';

  @override
  String get cvvHint => '123';

  @override
  String get dateTime => 'Date/Heure';

  @override
  String get deleteWarning => 'Avertissement de suppression';

  @override
  String get deleteYourself => 'Supprimez-vous';

  @override
  String get deleteYourselfAndCompany => 'Supprimez-vous et votre entreprise';

  @override
  String get demoData => 'Données de démonstration';

  @override
  String get email => 'E-mail';

  @override
  String get emailAddress => 'Adresse e-mail';

  @override
  String get emailAddressError => 'L\'adresse e-mail est requise !';

  @override
  String get emailAddressError2 => 'Format de l\'adresse e-mail incorrect !';

  @override
  String get enterBackendUrl => 'Saisir l\'URL du backend';

  @override
  String get enterCompanyAndCurrency =>
      'Veuillez saisir le nom de votre entreprise et la devise';

  @override
  String get enterCompanyName => 'Saisir le nom de l\'entreprise';

  @override
  String get error => 'Erreur';

  @override
  String get errorMessage => 'Message d\'erreur';

  @override
  String get expiryDate => 'MM/AA';

  @override
  String get expiryDateHint => '12/25';

  @override
  String get fieldRequired => 'Champ obligatoire';

  @override
  String get firstName => 'Prénom';

  @override
  String get firstNameError => 'Le prénom est requis !';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get generateDemoData => 'Générer des données de démonstration ?';

  @override
  String get goHome => 'Aller à l\'accueil';

  @override
  String get invoice => 'Facture';

  @override
  String get itemIsRequired => 'l\'article est requis';

  @override
  String get itemTypes => 'Types d\'articles';

  @override
  String get journal => 'Journal';

  @override
  String get lastName => 'Nom de famille';

  @override
  String get lastNameError => 'Le nom de famille est requis !';

  @override
  String get login => 'Connexion';

  @override
  String get loginName => 'Nom de connexion';

  @override
  String get loginWithExistingUserName =>
      'Se connecter avec un nom d\'utilisateur existant';

  @override
  String get logout => 'Déconnexion';

  @override
  String get main => 'Principal';

  @override
  String get mainDashboard => 'Tableau de bord principal';

  @override
  String get ms => 'ms';

  @override
  String get nameOnCard => 'Nom sur la carte';

  @override
  String get no => 'aucun ';

  @override
  String get noAccess => 'Pas d\'accès à cette page !';

  @override
  String get noAccessHere => 'Pas d\'accès ici !';

  @override
  String get noRestRequests => 'Aucune requête REST trouvée...';

  @override
  String get notAvailable => 'Non disponible';

  @override
  String get number => 'Numéro';

  @override
  String get numberHint => '1234 5678 9012 3456';

  @override
  String get ok => 'OK';

  @override
  String get onlyUserDelete =>
      'Supprimer uniquement l\'utilisateur, pas l\'entreprise';

  @override
  String get openInvoices => 'Factures ouvertes :';

  @override
  String get openSourceLicenses => 'Licences Open Source';

  @override
  String get order => 'Commande';

  @override
  String get parameters => 'Paramètres';

  @override
  String get password => 'Mot de passe';

  @override
  String get passwordError => 'Le mot de passe est requis !';

  @override
  String get passwordError2 => 'Le mot de passe est requis !';

  @override
  String get passwordHelper => 'Minimum 5 caractères';

  @override
  String get passwordMismatch => 'Les mots de passe ne correspondent pas !';

  @override
  String get passwordValidationError =>
      'Le mot de passe doit comporter au moins 5 caractères';

  @override
  String get payment => 'Paiement';

  @override
  String get paymentPlan => 'Plan de paiement';

  @override
  String get paymentTypes => 'Types de paiement';

  @override
  String get payWithinWeek => 'Payer dans la semaine';

  @override
  String get privacyCodeOfConduct => 'Confidentialité/Code de conduite';

  @override
  String get referrerUrl => 'URL de référence';

  @override
  String get refresh => 'Actualiser';

  @override
  String get register => 'S\'inscrire';

  @override
  String get registerAndCharge => 'S\'inscrire et facturer';

  @override
  String get registerNewCompanyAndAdmin =>
      'Inscrire une nouvelle entreprise et un nouvel administrateur';

  @override
  String get registration => 'Inscription';

  @override
  String get requestName => 'Nom de la requête';

  @override
  String get requestUrl => 'URL de la requête';

  @override
  String get restart => 'Redémarrer';

  @override
  String get restRequestDetails => 'Détails de la requête REST';

  @override
  String get revenueExpense => 'Revenus/Dépenses';

  @override
  String get runningTime => 'Temps d\'exécution';

  @override
  String get selectLanguage => 'Sélectionner la langue';

  @override
  String get selectPlanError => 'Veuillez sélectionner un plan !';

  @override
  String get sendNewPassword => 'Envoyer un nouveau mot de passe';

  @override
  String get serverHost => 'Hôte du serveur';

  @override
  String get serverIp => 'IP du serveur';

  @override
  String get shipment => 'Expédition';

  @override
  String get slowHit => 'Accès lent';

  @override
  String get status => 'Statut';

  @override
  String get submitNewPassword => 'Soumettre le nouveau mot de passe';

  @override
  String get subscription => 'Abonnement';

  @override
  String get success => 'Succès';

  @override
  String get supplier => 'Fournisseur';

  @override
  String get tempPassword =>
      'Un mot de passe temporaire sera envoyé par e-mail';

  @override
  String get test => 'Test';

  @override
  String get testSystem => 'Système de test';

  @override
  String get theme => 'Thème';

  @override
  String get timePeriods => 'Périodes';

  @override
  String get transaction => 'Transaction';

  @override
  String get transactions => 'Transactions';

  @override
  String get trialPeriod => 'Période d\'essai';

  @override
  String get unknown => 'Inconnu';

  @override
  String get update => 'Mettre à jour';

  @override
  String get user => 'Utilisateur';

  @override
  String get userAndCompanyDelete =>
      'Supprimer l\'utilisateur et l\'entreprise';

  @override
  String username(String username) {
    return 'Nom d\'utilisateur : $username';
  }

  @override
  String get usernameEmail => 'Nom d\'utilisateur/E-mail';

  @override
  String get usernameEmailError =>
      'Le nom d\'utilisateur/l\'e-mail est requis !';

  @override
  String get verifyPassword => 'Vérifier le mot de passe';

  @override
  String get verifyPasswordError =>
      'La vérification du mot de passe est requise !';

  @override
  String get verifyPasswordHelper => 'Ressaisir le mot de passe';

  @override
  String version(String version, String build) {
    return 'Version : $version build : $build';
  }

  @override
  String get viewLicense => 'Voir la licence';

  @override
  String get viewReadme => 'Voir le fichier Lisezmoi';

  @override
  String get welcome => 'Bienvenue !';

  @override
  String get welcomeToAbibokBusinessSystem =>
      'Bienvenue dans le système commercial Abibok !';

  @override
  String get yes => 'Oui';

  @override
  String get about => 'À propos';

  @override
  String get accounting => 'Comptabilité';

  @override
  String get accountingDashboard => 'Tableau de bord de la comptabilité';

  @override
  String get accountingLedger => 'Grand livre comptable';

  @override
  String get accountingPurch => 'Achat comptable';

  @override
  String get accountingSales => 'Vente comptable';

  @override
  String get administrators => 'Administrateurs';

  @override
  String get allOpportunities => 'Toutes les opportunités';

  @override
  String get assets => 'Actifs';

  @override
  String get catalog => 'Catalogue';

  @override
  String get categories => 'Catégories';

  @override
  String get company => 'Entreprise';

  @override
  String get crm => 'CRM';

  @override
  String get customers => 'Clients';

  @override
  String get employees => 'Employés';

  @override
  String get incomingInvoices => 'Factures entrantes';

  @override
  String get incomingPayments => 'Paiements entrants';

  @override
  String get incomingShipments => 'Expéditions entrantes';

  @override
  String get inventory => 'Inventaire';

  @override
  String get leads => 'Pistes';

  @override
  String get ledgerAccnt => 'Compte du grand livre';

  @override
  String get ledgerJournals => 'Journaux du grand livre';

  @override
  String get ledgerTransaction => 'Transaction du grand livre';

  @override
  String get ledgerTree => 'Arborescence du grand livre';

  @override
  String get myTodoTasks => 'Mes tâches à faire';

  @override
  String get opportunities => 'Opportunités';

  @override
  String get orders => 'Commandes';

  @override
  String get organization => 'Organisation';

  @override
  String get otherEmployees => 'Autres employés';

  @override
  String get outgoingInvoices => 'Factures sortantes';

  @override
  String get outgoingPayments => 'Paiements sortants';

  @override
  String get outgoingShipments => 'Expéditions sortantes';

  @override
  String get paymtTypes => 'Types de paiement';

  @override
  String get planSelection => 'Sélection du plan';

  @override
  String get products => 'Produits';

  @override
  String get purchaseOrders => 'Bons de commande';

  @override
  String get purchaseUnpaidInvoices => 'Acheter des factures impayées';

  @override
  String get reports => 'Rapports';

  @override
  String get requests => 'Demandes';

  @override
  String get salesOpenInvoices => 'Ventes de factures ouvertes';

  @override
  String get salesOrders => 'Commandes de vente';

  @override
  String get setUp => 'Configurer';

  @override
  String get subscriptions => 'Abonnements';

  @override
  String get suppliers => 'Fournisseurs';

  @override
  String get website => 'Site Web';

  @override
  String get whLocations => 'Emplacements d\'entrepôt';

  @override
  String get checkIn => 'Arrivée';

  @override
  String get checkOut => 'Départ';

  @override
  String get inOut => 'Entrée/Sortie';

  @override
  String get myHotel => 'Mon hôtel';

  @override
  String get reservations => 'Réservations';

  @override
  String get rooms => 'Chambres';

  @override
  String get roomTypes => 'Types de chambres';

  @override
  String get tasks => 'Tâches';

  @override
  String get myOpportunities => 'Mes opportunités';

  @override
  String get clients => 'Clients';

  @override
  String get staff => 'Personnel';

  @override
  String get applications => 'Applications';

  @override
  String get restRequests => 'Requêtes REST';

  @override
  String get userRequestStatus => 'Utilisateur\nRequête\nStatut';

  @override
  String get authLoginSuccess => 'Connexion réussie';

  @override
  String get authLoginFailure => 'Échec de la connexion';

  @override
  String get authLogoutSuccess => 'Déconnexion réussie';

  @override
  String get authRegisterSuccess =>
      'Inscription réussie. Vous pouvez maintenant vous connecter avec le mot de passe envoyé par email';

  @override
  String get authRegisterFailure => 'Échec de l\'inscription';

  @override
  String get authPasswordResetSuccess =>
      'Réinitialisation du mot de passe réussie';

  @override
  String get authPasswordResetFailure =>
      'Échec de la réinitialisation du mot de passe';

  @override
  String get authUpdateSuccess => 'Authentification mise à jour avec succès';

  @override
  String get authUpdateFailure =>
      'Échec de la mise à jour de l\'authentification';

  @override
  String get notificationFetchSuccess => 'Notifications récupérées avec succès';

  @override
  String get notificationFetchFailure =>
      'Échec de la récupération des notifications';

  @override
  String get notificationMarkReadSuccess => 'Notification marquée comme lue';

  @override
  String get notificationMarkReadFailure =>
      'Échec du marquage de la notification comme lue';

  @override
  String passwordChangeSuccess(String username) {
    return 'Mot de passe modifié avec succès pour l\'utilisateur: $username';
  }

  @override
  String get chatNotActive => 'Chat non actif !';

  @override
  String get messageText => 'Texte du message..';

  @override
  String get send => 'Envoyer';

  @override
  String get addPartner => 'Ajouter un partenaire';

  @override
  String get newChat => 'Nouveau';

  @override
  String get selectChatPartner => 'Sélectionnez un partenaire de chat';

  @override
  String get chatPartner => 'Partenaire de chat';

  @override
  String get room => 'Salle';

  @override
  String get chatRoom => 'Salle de chat';

  @override
  String get chatUsersAndGroups => 'Utilisateurs et groupes de chat';

  @override
  String get sFound => 's trouvé(s) !';

  @override
  String get searchInName => 'rechercher dans le nom ..';

  @override
  String get search => 'Rechercher';

  @override
  String get name => 'Nom';

  @override
  String get pvt => 'Privé';

  @override
  String get nroMembers => '#Memb.';

  @override
  String get allMessagesRead => 'Tous les messages lus';

  @override
  String get unreadMessages => 'messages non lus';

  @override
  String get chatRoomUpdateSuccess => 'Salle de chat mise à jour avec succès';

  @override
  String get chatRoomUpdateFailure =>
      'Échec de la mise à jour de la salle de chat';

  @override
  String get chatRoomDeleteSuccess => 'Salle de chat supprimée avec succès';

  @override
  String get chatRoomDeleteFailure =>
      'Échec de la suppression de la salle de chat';

  @override
  String get chatRoomAddSuccess => 'Salle de chat ajoutée avec succès';

  @override
  String get chatRoomAddFailure => 'Échec de l\'ajout de la salle de chat';

  @override
  String get chatRoomFetchFailure =>
      'Échec de la récupération des salles de chat';

  @override
  String get chatMessageSendSuccess => 'Message envoyé avec succès';

  @override
  String get chatMessageSendFailure => 'Échec de l\'envoi du message';

  @override
  String get chatMessageDeleteSuccess => 'Message supprimé avec succès';

  @override
  String get chatMessageDeleteFailure => 'Échec de la suppression du message';

  @override
  String get chatMessageFetchFailure => 'Échec de la récupération des messages';
}
