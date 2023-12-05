create database twitch;
use twitch;
/*1*/
CREATE TABLE Users (
    UserID INT NOT NULL AUTO_INCREMENT,
    Username VARCHAR(50),
    PasswordHash VARCHAR(255),
    Email VARCHAR(100),
    DateJoined DATE,
    CONSTRAINT pk_user PRIMARY KEY (UserID)
)ENGINE=INNODB;
CREATE TABLE chaine (
    ChaineID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    description TEXT,
    nbr_abonne INT,
    lien_reseau_tiktok VARCHAR(255),
    lien_reseau_instagram VARCHAR(255),
    lien_reseau_discord VARCHAR(255),
    lien_reseau_Youtube VARCHAR(255),
    lien_reseau_X VARCHAR(255),
    lien_reseau_Facebbok VARCHAR(255),
    photo_de_profile VARCHAR(255),
    certifié BOOLEAN,
    date_created DATE,
    date_updated DATE,
    IDUser INT,
    CONSTRAINT pk_ChaineID PRIMARY KEY (ChaineID),
    CONSTRAINT fk_ChaineUser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE

)ENGINE=INNODB;
CREATE TABLE Stream (
    StreamID INT NOT NULL AUTO_INCREMENT,
    IDChaine INT,
    Titre VARCHAR(255),
    Description TEXT,
    debut TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fin TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    en_direct BOOLEAN,
    FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE,
    CONSTRAINT PK_stream PRIMARY KEY (StreamID)
)ENGINE=INNODB;


/*2*/
CREATE TABLE StreamHistory (
    StreamID INT NOT NULL AUTO_INCREMENT,
    IdUser INT,
    StreamTitle VARCHAR(100),
    StreamCategory VARCHAR(50),
    StreamDate DATETIME,
    DurationMinutes INT,
    FOREIGN KEY (IdUser) REFERENCES Users(UserID ) ON DELETE CASCADE,
    CONSTRAINT pk_stream PRIMARY KEY (StreamID)
)ENGINE=INNODB;

/*3*/
CREATE TABLE Notifications (
    NotificationID INT NOT NULL AUTO_INCREMENT,
    IdUser INT,
    NotificationType VARCHAR(50),
    NotificationContent TEXT,
    Timestamp DATETIME,
    FOREIGN KEY (IdUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT pk_notification PRIMARY KEY (NotificationID)

)ENGINE=INNODB;

/*4*/
CREATE TABLE CategoryHistory (
    CategoryID INT NOT NULL AUTO_INCREMENT,
    IdUser INT,
    CategoryName VARCHAR(50),
    DateAdded DATE,
    FOREIGN KEY (IdUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT pk_category PRIMARY KEY (CategoryID)
)ENGINE=INNODB;

/*5*/
CREATE TABLE VideoStatistics (
    VideoStatsID INT NOT NULL AUTO_INCREMENT,
    IdUser INT,
    VideoID INT,
    Views INT,
    Comments INT,
    FOREIGN KEY (IdUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT pk_videostats PRIMARY KEY (VideoStatsID)
)ENGINE=INNODB;

/*6*/
CREATE TABLE UserStatistics (
    UserStatsID INT NOT NULL AUTO_INCREMENT,
    IdUser INT,
    Followers INT,
    Subscribers INT,
    Reputation INT,
    FOREIGN KEY (IdUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT pk_userstats PRIMARY KEY (UserStatsID)
)ENGINE=INNODB;

/*7*/
CREATE TABLE ActivityHistory (
    ActivityID INT NOT NULL AUTO_INCREMENT,
    IdUser INT,
    ActivityType VARCHAR(50),
    ActivityDetails TEXT,
    Timestamp DATETIME,
    FOREIGN KEY (IdUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT pk_activity PRIMARY KEY (ActivityID)
)ENGINE=INNODB;

/*8*/
CREATE TABLE UserLanguages (
    LanguageID INT NOT NULL AUTO_INCREMENT,
    IdUser INT,
    LanguageName VARCHAR(50),
    FOREIGN KEY (IdUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT pk_language PRIMARY KEY (LanguageID)
)ENGINE=INNODB;

/*9*/
CREATE TABLE PrivateMessages (
    MessageID INT NOT NULL AUTO_INCREMENT,
    SenderID INT,
    ReceiverID INT,
    MessageContent TEXT,
    Timestamp DATETIME,
    FOREIGN KEY (SenderID) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (ReceiverID) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT pk_message PRIMARY KEY (MessageID)
)ENGINE=INNODB;

/*10*/
CREATE TABLE Polls (
    PollID INT NOT NULL AUTO_INCREMENT,
    IdUser INT,
    PollQuestion TEXT,
    Options TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    FOREIGN KEY (IdUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT pk_poll PRIMARY KEY (PollID)
)ENGINE=INNODB;



CREATE TABLE Tag (
    TagID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    date_created DATE,
    date_updated DATE,
    IDStream INT,
    PRIMARY KEY (TagID),
    FOREIGN KEY (IDStream) REFERENCES Stream(StreamID) ON DELETE CASCADE
)ENGINE=INNODB;


CREATE TABLE emotes(
    EmotesID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    representation VARCHAR(255),
    image_lien VARCHAR(255),
    description VARCHAR(255),
    debloque BOOLEAN,
    personnalise BOOLEAN,
    date_created DATE,
    date_updated DATE,
    IDStream INT,
    IDChaine INT,
    CONSTRAINT pk_EmotesID PRIMARY KEY (EmotesID),
    CONSTRAINT fk_emotes_Stream FOREIGN KEY (IDStream) REFERENCES Stream(StreamID) ON DELETE CASCADE,
    CONSTRAINT fk_emotes_Chaine FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE

)ENGINE=INNODB;

CREATE TABLE hebergement (
    HebergementID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    localisation VARCHAR(255),
    debit_GO FLOAT,
    stockage INT,
    acces_user VARCHAR(255),
    acces_password VARCHAR(255),
    modele_SGBD VARCHAR(90),
    date_created DATE,
    date_updated DATE,
    IDStream INT,
    CONSTRAINT pk_HebergementID PRIMARY KEY (HebergementID),
    CONSTRAINT fk_hebergement_Stream FOREIGN KEY (IDStream) REFERENCES Stream(StreamID) ON DELETE CASCADE
)ENGINE=INNODB;


CREATE TABLE badges(
    BadgesID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    description VARCHAR(255),
    niveau VARCHAR(255),
    image_lien VARCHAR(255),
    date_created DATE,
    date_updated DATE,
    IDStream INT,
    IDChaine INT,
    CONSTRAINT pk_BadgesID PRIMARY KEY (BadgesID),
    CONSTRAINT fk_badges_Stream FOREIGN KEY (IDStream) REFERENCES Stream(StreamID) ON DELETE CASCADE,
    CONSTRAINT fk_badges_Chaine FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE


)ENGINE=INNODB;

CREATE TABLE user_settings(
    UserSettingsID INT NOT NULL AUTO_INCREMENT,
    IDUser INT,
    nom VARCHAR(255),
    pseudo VARCHAR(255),
    bio VARCHAR(255),
    prime BOOLEAN,
    email VARCHAR(255),
    num VARCHAR(255),
    2FA BOOLEAN,
    bannier_image_link VARCHAR(255),
    profile_image_link VARCHAR(255),
    actif BOOLEAN,
    chuchotement_inconnue BOOLEAN,
    reception_cadeau_chaine_non_suivi BOOLEAN,
    Cacher_état_abonnement_carte_spectateur_chat BOOLEAN,
    Cacher_badge_fondateur BOOLEAN,
    autoister_notif BOOLEAN,
    CONSTRAINT pk_UserSettingsID PRIMARY KEY (UserSettingsID) ,
    CONSTRAINT fk_UserSettings_User FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE categories(
    CategoriesID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    image_link VARCHAR(255),
    description VARCHAR(255),
    date_created DATE,
    date_updated DATE,
    type_contenu VARCHAR(255),
    mot_cle VARCHAR(255),
    nombre_user_actif INT,
    IDStream INT,
    CONSTRAINT pk_CategoriesID PRIMARY KEY (CategoriesID),
    CONSTRAINT fk_categories_Stream FOREIGN KEY (IDStream) REFERENCES Stream(StreamID) ON DELETE CASCADE

)ENGINE=INNODB;

CREATE TABLE collection(
    CollectionID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    nbr_video INT,
    nbr_vue INT,
    IDUser INT,
    nbr_like INT,
    IDChaine INT,
    CONSTRAINT pk_CollectionID PRIMARY KEY (CollectionID),
    CONSTRAINT fk_collection_Chaine FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE

)ENGINE=INNODB;

CREATE TABLE layout(
    LayoutID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    description VARCHAR(255),
    couleur VARCHAR(90),
    taille VARCHAR(100),
    date_created DATE,
    date_updated DATE,
    visible BOOLEAN,
    proprietaire VARCHAR(255),
    type_page VARCHAR(255),
    ordre_affichage INT,
    IDChaine INT,
    CONSTRAINT pk_LayoutID PRIMARY KEY (LayoutID),
    CONSTRAINT fk_layout_Chaine FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE Chat (
    ChatID INT NOT NULL AUTO_INCREMENT,
    IDUsers INT,
    IDComments INT,
    date_envoi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (IDUsers) REFERENCES Users(UserID) ON DELETE CASCADE, 
    CONSTRAINT PK_chat PRIMARY KEY(ChatID)
)ENGINE=INNODB;


CREATE TABLE Reactions (
    ReactionsID INT NOT NULL AUTO_INCREMENT,
    IDUsers INT,
    IDComments INT,
    type_reaction VARCHAR(255),
    date_reaction TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (IDUsers) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (IDComments) REFERENCES Chat(ChatID) ON DELETE CASCADE,
    CONSTRAINT PK_reactions PRIMARY KEY(ReactionsID)
)ENGINE=INNODB;

CREATE TABLE Follower (
    FollowerID INT NOT NULL AUTO_INCREMENT,
    IDUsers INT,
    IDFollowedUser INT,
    date_follow TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (IDUsers) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (IDFollowedUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT PK_follower PRIMARY KEY(FollowerID)
)ENGINE=INNODB;

CREATE TABLE Sub (
    SubID INT NOT NULL AUTO_INCREMENT,
    IDUsers INT,
    IDChaine INT,
    tier ENUM('tier1', 'tier2', 'tier3'),
    date_debut TIMESTAMP,
    date_fin TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (IDUsers) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE,
    CONSTRAINT PK_sub PRIMARY KEY (SubID)
)ENGINE=INNODB;

CREATE TABLE FollowerUser (
    FollowerUserID INT NOT NULL AUTO_INCREMENT,
    IDUser INT,
    IDFollower INT,
    FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (IDFollower) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT PK_followeruser PRIMARY KEY(FollowerUserID)
)ENGINE=INNODB;


CREATE TABLE Subscriber (
    SubscriberID INT NOT NULL AUTO_INCREMENT,
    IDSubscriberUser INT,
    IDChaine INT,
    FOREIGN KEY (IDSubscriberUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE,
    CONSTRAINT PK_subscriber PRIMARY KEY(SubscriberID)
)ENGINE=INNODB;


CREATE TABLE SubscriberUser (
    SubscriberUserID INT NOT NULL AUTO_INCREMENT,
    IDUser INT,
    IDSubscriber INT,
    FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (IDSubscriber) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT PK_subscriberuser PRIMARY KEY(SubscriberUserID)
)ENGINE=INNODB;


CREATE TABLE Don (
    DonID INT NOT NULL AUTO_INCREMENT,
    user_id_donateur INT,
    user_id_receveur INT,
    montant DECIMAL(10, 2),
    message TEXT,
    date_don TIMESTAMP,
    FOREIGN KEY (user_id_donateur) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (user_id_receveur) REFERENCES Chaine(ChaineID) ON DELETE CASCADE,
    CONSTRAINT PK_don PRIMARY KEY(DonID)
)ENGINE=INNODB;

CREATE TABLE Pub (
    PubID INT NOT NULL AUTO_INCREMENT,
    IDChaine INT,
    Titre VARCHAR(255),
    Description TEXT,
    debut TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fin TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    actif BOOLEAN,
    FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE,
    CONSTRAINT PK_pub PRIMARY KEY (PubID)
)ENGINE=INNODB;


CREATE TABLE Partage (
    PartageID INT NOT NULL AUTO_INCREMENT,
    user_id_partageur INT,
    IDStream INT,
    url VARCHAR(255),
    FOREIGN KEY (user_id_partageur) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (IDStream) REFERENCES Stream(StreamID) ON DELETE CASCADE,
    CONSTRAINT PK_partage PRIMARY KEY(PartageID)
)ENGINE=INNODB;

CREATE TABLE roles (
    RolesId INT NOT NULL AUTO_INCREMENT,
    nom_role VARCHAR(50) NOT NULL,
    CONSTRAINT pk_role PRIMARY KEY (RolesId)
)ENGINE=INNODB;

CREATE TABLE outils_diffusion (
id INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(100) NOT NULL,
type VARCHAR(50),
description TEXT,
date_acquisition DATE,
fabricant VARCHAR(100),
prix DECIMAL(10, 2)
)ENGINE=INNODB;

CREATE TABLE settings (
    SettingsID INT AUTO_INCREMENT PRIMARY KEY,
    nom_parametre VARCHAR(100) NOT NULL,
    valeur_parametre TEXT
)ENGINE=INNODB;


CREATE TABLE vues_en_direct (
    VueEnDirectID INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    date_debut DATETIME,
    date_fin DATETIME,
    nombre_spectateurs INT,
    lien_stream VARCHAR(255)
)ENGINE=INNODB;


CREATE TABLE donnees_demographiques_utilisateurs (
    DonneesDemographiquesUtilisateursID INT AUTO_INCREMENT,
    utilisateur_id INT,
    age INT,
    genre VARCHAR(20),
    pays VARCHAR(50),
    CONSTRAINT pk_donnees_demographiques_utilisateurs PRIMARY KEY (DonneesDemographiquesUtilisateursID)
)ENGINE=INNODB;

CREATE TABLE tarifs (
    TarifsID INT AUTO_INCREMENT PRIMARY KEY,
    nom_forfait VARCHAR(50) NOT NULL,
    description TEXT,
    prix DECIMAL(10, 2)
)ENGINE=INNODB;


CREATE TABLE salons_discussion_prives (
    SalonsDiscussionPrivesID INT AUTO_INCREMENT,
    nom_salon VARCHAR(100) NOT NULL,
    description TEXT,
    date_creation DATE,
    createur_id INT,
    PRIMARY KEY (SalonsDiscussionPrivesID)
)ENGINE=INNODB;

CREATE TABLE Signalement (
    signalementID INT NOT NULL AUTO_INCREMENT,
    IdUserSignalant INT,
    IdUserSignale INT,
    Date_heure_signalement DATETIME,
    Type_signalement VARCHAR(255),
    Description_signalement TEXT,
    Etat_signalement VARCHAR(50),
    CONSTRAINT pk_signalement PRIMARY KEY (signalementID),
    CONSTRAINT fk_user_signalant FOREIGN KEY (IdUserSignalant) REFERENCES users(UserID) ON DELETE CASCADE,
    CONSTRAINT fk_user_signale FOREIGN KEY (IdUserSignale) REFERENCES users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE IndexTelephonique (
    indexTelephoniqueID INT NOT NULL AUTO_INCREMENT,
    IdUser INT,
    Numero_telephone VARCHAR(15),
    CONSTRAINT pk_index_telephonique PRIMARY KEY (indexTelephoniqueID),
    CONSTRAINT fk_user_index_telephonique FOREIGN KEY (IdUser) REFERENCES users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE Moderateur (
    moderateurID INT NOT NULL AUTO_INCREMENT,
    IdUserModerateur INT,
    Date_debut_moderation DATETIME,
    Date_fin_moderation DATETIME,
    IdChaine INT,
    CONSTRAINT pk_moderateur PRIMARY KEY (moderateurID),
    CONSTRAINT fk_user_moderateur FOREIGN KEY (IdUserModerateur) REFERENCES users(userID) ON DELETE CASCADE,
    CONSTRAINT fk_chaine_moderateurs FOREIGN KEY (IdChaine) REFERENCES Chaine(chaineID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE Ban (
    banID INT NOT NULL AUTO_INCREMENT,
    IdUserbanni INT,
    Date_heure_bannissement DATETIME,
    Duree_ban INT,
    Raison_ban VARCHAR(255),
    IdAdmin INT,
    IDChaine INT,
    CONSTRAINT pk_ban PRIMARY KEY (banID),
    CONSTRAINT fk_user_banni FOREIGN KEY (IdUserbanni) REFERENCES users(UserID) ON DELETE CASCADE,
    CONSTRAINT fk_admin_ban FOREIGN KEY (IdAdmin) REFERENCES Moderateur(moderateurID) ON DELETE CASCADE,
    CONSTRAINT fk_chaine_bans FOREIGN KEY (IDChaine) REFERENCES Chaine(chaineID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE Alerte (
    alerteID INT NOT NULL AUTO_INCREMENT,
    Date_heure_alerte DATETIME,
    Type_alerte VARCHAR(50),
    Description_alerte TEXT,
    IdChaine INT,
    CONSTRAINT pk_alerte PRIMARY KEY (alerteID),
    CONSTRAINT fk_chaine_alerte FOREIGN KEY (IdChaine) REFERENCES Chaine(chaineID) ON DELETE CASCADE
)ENGINE=INNODB;


CREATE TABLE HistoriqueDiffusion (
    diffusionID INT NOT NULL AUTO_INCREMENT,
    Date_heure_diffusion DATETIME,
    Duree_diffusion INT,
    Titre_diffusion VARCHAR(255),
    Categorie_diffusion VARCHAR(50),
    Est_rediffusion BOOLEAN,
    IdChaine INT,
    CONSTRAINT pk_diffusion PRIMARY KEY (diffusionID),
    CONSTRAINT fk_chaine_diffusion FOREIGN KEY (IdChaine) REFERENCES Chaine(chaineID) ON DELETE CASCADE
)ENGINE=INNODB;


CREATE TABLE Rediffusion (
    rediffusionID INT NOT NULL AUTO_INCREMENT,
    IdUserRediffusion INT,
    Date_heure_rediffusion DATETIME,
    Duree_rediffusion INT,
    Titre_rediffusion VARCHAR(255),
    Categorie_rediffusion VARCHAR(50),
    IdDiffusionOriginale INT,
    IdChaine INT,
    CONSTRAINT pk_rediffusion PRIMARY KEY (rediffusionID),
    CONSTRAINT fk_chaine_rediffusion FOREIGN KEY (IdChaine) REFERENCES Chaine(chaineID) ON DELETE CASCADE,
    CONSTRAINT fk_diffusion_originale FOREIGN KEY (IdDiffusionOriginale) REFERENCES HistoriqueDiffusion(diffusionID) ON DELETE CASCADE,
    CONSTRAINT fk_user_diffusant_redifussion FOREIGN KEY (IdUserRediffusion) REFERENCES users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;
CREATE TABLE ParametresAudio (
    ParametreAudioID INT NOT NULL AUTO_INCREMENT,
    NomParametre VARCHAR(255),
    ValeurParametre VARCHAR(255),
    Description TEXT,
    QualiteAudio ENUM('Faible', 'Moyenne', 'Élevée'),
    DateCreation DATE,
    DateModification DATE,
    IDUser INT, 
    Volume INT,
    IDChaine INT, 
    CONSTRAINT pk_ParametreAudioID PRIMARY KEY (ParametreAudioID),
    CONSTRAINT fk_ParametreAudioUser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT fk_ParametreAudioChaine FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE ParametresCookies (
    ParametreCookieID INT NOT NULL AUTO_INCREMENT,
    TypeCookie ENUM('Essentiel', 'Fonctionnel', 'Analytique', 'Marketing'),
    Description TEXT,
    DateCreation DATE,
    DateModification DATE,
    IDUser INT, 
    IDChaine INT,
    CONSTRAINT pk_ParametreCookieID PRIMARY KEY (ParametreCookieID),
    CONSTRAINT fk_ParametreCookieUser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT fk_ParametreCookieChaine FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE
)ENGINE=INNODB;
CREATE TABLE premium (
    premiumID INT NOT NULL AUTO_INCREMENT,
    actif BOOLEAN,
    IDUser INT,
    CONSTRAINT pk_Premium PRIMARY KEY (premiumID),
    CONSTRAINT fk_premium FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
) ENGINE=INNODB;


CREATE TABLE Transactions (
    TransactionID INT NOT NULL AUTO_INCREMENT,
    SenderID INT,
    ReceiverID INT,
    Amount DECIMAL(10, 2),
    TransactionType ENUM('Donation', 'Purchase'),
    Description TEXT,
    Timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (SenderID) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (ReceiverID) REFERENCES Users(UserID) ON DELETE CASCADE,
    PRIMARY KEY (TransactionID) 
)ENGINE=INNODB;

CREATE TABLE Favorites (
    FavoriteID INT NOT NULL AUTO_INCREMENT,
    UserID INT,
    ContentID INT,
    ContentType ENUM('Video', 'LiveStream', 'Post'),
    Timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE,
    PRIMARY KEY (FavoriteID)
)ENGINE=INNODB;

CREATE TABLE panel (
    panelID INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    type_panel VARCHAR(20),
    description TEXT,
    IDChaine INT,
    prix DECIMAL(10, 2),
    CONSTRAINT fk_Panel FOREIGN KEY (IDChaine) REFERENCES Chaine(ChaineID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE jeux (
    jeuxID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    DateCreation DATE,
    DateModification DATE,
    CONSTRAINT pk_jeux PRIMARY KEY (jeuxID)
) ENGINE=InnoDB;

CREATE TABLE messagesysteme(
    messagesystemeID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    motif VARCHAR(255),
    DateCreation DATE,
    CONSTRAINT pk_messagesysteme PRIMARY KEY (messagesystemeID)
)ENGINE=InnoDB;

CREATE TABLE cagnotte (
    cagnotteID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    description VARCHAR(255),
    montant INT,
    IDUser INT,
    DateCreation DATE,
    DateModification DATE,
    CONSTRAINT fk_cagnotteuser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT pk_cagnotte PRIMARY KEY (cagnotteID)
)ENGINE=InnoDB;

CREATE TABLE suggestion (
    suggestionID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    IDUser INT,
    contenu TEXT,
    CONSTRAINT pk_suggestion PRIMARY KEY (suggestionID),
    CONSTRAINT fk_suhhestionuser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE emotestats(
    emotestatsID INT NOT NULL AUTO_INCREMENT,
    IDemote INT,
    nbr_utilisation INT,
    dernier_utilisation DATE,
    CONSTRAINT pk_emotestats PRIMARY KEY (emotestatsID),
    CONSTRAINT fk_emotestats FOREIGN KEY (IDemote) REFERENCES emotes(EmotesID) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE AdRevenue(
    AdRevenueID INT NOT NULL AUTO_INCREMENT,
    montant INT,
    IDChaine INT,
    CONSTRAINT pk_adRevenue PRIMARY KEY (AdRevenueID),
    CONSTRAINT fk_adRevenue FOREIGN KEY (IDChaine) REFERENCES chaine(ChaineID) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE viewer_history (
    viewerID INT NOT NULL AUTO_INCREMENT,
    nom_stream VARCHAR(255),
    nom_streamer VARCHAR(255),
    temps_sur_stream FLOAT,
    IDStream INT,
    CONSTRAINT pk_viewer_history PRIMARY KEY (viewerID),
    CONSTRAINT fk_viewer_history FOREIGN KEY (IDStream) REFERENCES Stream(StreamID) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE merchandising(
    merchandisingID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    lien_photo VARCHAR(255),
    lien_site VARCHAR(255),
    prix FLOAT,
    DateCreation DATE,
    DateModification DATE,
    IDChaine INT,
    CONSTRAINT pk_merchandising PRIMARY KEY (merchandisingID),
    CONSTRAINT fk_merch FOREIGN KEY (IDChaine) REFERENCES chaine(chaineID) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE chatbot(
    chatbotID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    fonction VARCHAR(255),
    actif BOOLEAN,
    DateCreation DATE,
    DateModification DATE,
    IDStream INT,
    CONSTRAINT pk_chatbot PRIMARY KEY (chatbotID),
    CONSTRAINT fk_chatbotstream FOREIGN KEY (IDStream) REFERENCES Stream(StreamID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE theme(
    themeID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    dark BOOLEAN,
    personalise VARCHAR(255),
    IDUser INT,
    CONSTRAINT pk_theme PRIMARY KEY (themeID),
    CONSTRAINT fk_themeuser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE verification_mail(
    verification_mailID INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255),
    code VARCHAR(10),
    verifier BOOLEAN,
    IDUser INT,
    CONSTRAINT pk_verification_email PRIMARY KEY (verification_mailID),
    CONSTRAINT fk_verification_email FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE bits(
    bitsID INT NOT NULL AUTO_INCREMENT,
    nombre FLOAT,
    prix FLOAT,
    emoticons VARCHAR(10),
    CONSTRAINT pk_bits PRIMARY KEY (bitsID)
)ENGINE=INNODB;

CREATE TABLE tickets(
    ticketsID INT NOT NULL AUTO_INCREMENT,
    sujet VARCHAR(90),
    description TEXT,
    IDUser INT,
    CONSTRAINT pk_tickets PRIMARY KEY (ticketsID),
    CONSTRAINT fk_ticketsuser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE

)ENGINE=INNODB;

CREATE TABLE Abonnement (
    AbonnementID INT NOT NULL AUTO_INCREMENT,
    nbr_abonnement INT,
    liste_abonement TEXT,
    IDUser INT,
    CONSTRAINT pk_Abonnement PRIMARY KEY (AbonnementID),
    CONSTRAINT fk_abonnementuser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE API (
    APIID INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(90),
    clée VARCHAR(76),
    DateCreation DATE,
    IDUser INT,
    CONSTRAINT pk_API PRIMARY KEY (APIID),
    CONSTRAINT fk_api FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE carte_cadeau(
    carte_cadeauID INT NOT NULL AUTO_INCREMENT,
    clée VARCHAR(80),
    prix FLOAT,
    DateCreation DATE,
    DateActivation DATE,
    IDUser INT,
    CONSTRAINT pk_clée PRIMARY KEY (carte_cadeauID),
    CONSTRAINT fk_carte_cadeauuser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE blog(
    blogID int NOT NULL AUTO_INCREMENT,
    nom_article VARCHAR(255),
    description_article TEXT,
    nbr_vue_article INT,
    DateCreation DATE,
    modifier ENUM('1', '2', '3','4','5'),
    CONSTRAINT pk_blog PRIMARY KEY (blogID)
)ENGINE=INNODB;

CREATE TABLE FAQ(
    FAQID int NOT NULL AUTO_INCREMENT,
    question VARCHAR(255),
    reponse text,
    CONSTRAINT pk_FAQ PRIMARY KEY (FAQID)
)ENGINE=INNODB;

CREATE TABLE Drops(
    DropID int NOT NULL AUTO_INCREMENT,
    nom VARCHAR(80),
    montant INT,
    jeux VARCHAR(90),
    IDUser INT,
    CONSTRAINT pk_drop PRIMARY KEY (DropID),
    CONSTRAINT fk_dropuser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE historique_connexion(
    histotique_connexionID int NOT NULL AUTO_INCREMENT,
    Dateconnexion Date,
    temps_connecter TIME,
    IDUser INT,
    CONSTRAINT pk_histotique_connexion PRIMARY KEY (histotique_connexionID),
    CONSTRAINT fk_historique_connexionuser FOREIGN KEY (IDUser) REFERENCES Users(UserID) ON DELETE CASCADE
)ENGINE=INNODB;