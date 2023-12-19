-- selection d'une chaine en stream qui parle francais avec le tag music hebreger au japon dont le nombre de viewer actif est > 300 et ou un mec a été banii pour Violation des regles et qui est sub au rang 1 
-- 1
USE twitch;

SELECT DISTINCT chaine.nom FROM chaine 
JOIN Users ON chaine.IDUser = Users.UserID 
JOIN Stream ON Stream.IDChaine = Chaine.ChaineID
JOIN UserLanguages ON UserLanguages.IDUser = Users.UserID
JOIN Tag ON Tag.IDStream = Stream.StreamID
JOIN hebergement ON hebergement.IDStream = Stream.StreamID
JOIN Ban ON Ban.IDChaine = Chaine.ChaineID
JOIN categories ON categories.IDStream = Stream.StreamID
JOIN Sub ON Sub.IDChaine = Chaine.ChaineID
WHERE Stream.en_direct = true AND UserLanguages.LanguageName = 'French'
AND Tag.nom ='Music' AND hebergement.localisation = 'Japan' AND Ban.Raison_ban = 'Violation des règles'
AND categories.nombre_user_actif > 300 AND Sub.tier = 'tier1';


-- selection d'un utilisateurs qui est premium , qui à été verifier par mail, qui à fait un ticket concernant une assistance technique , qui a crée une cagnotte de plus de 1000 € et qui est moderateur le 28-11-2023 et qui a utilios& la réaction Like
-- 2

SELECT DISTINCT Users.username FROM Users
JOIN premium ON Users.UserID = premium.IDUser
JOIN verification_mail ON Users.UserID = verification_mail.IDUser
JOIN tickets ON Users.UserID = tickets.IDUser
JOIN cagnotte ON Users.UserID = cagnotte.IDUser
JOIN chaine ON Users.UserID = chaine.IDUser
JOIN Moderateur ON chaine.ChaineID = Moderateur.IDChaine
JOIN Reactions ON Users.UserID = Reactions.IDUsers
WHERE premium.actif = true AND verification_mail.verifier = true AND tickets.sujet LIKE '%assistance technique%'
AND cagnotte.montant >= 1000 AND Moderateur.Date_debut_moderation LIKE '%2023-11-27%' AND Reactions.type_reaction = 'Like';

-- 3

SELECT DISTINCT u.username
FROM Users AS u
JOIN Abonnement AS a ON u.UserID = a.IDUser
JOIN Chaine AS c ON u.UserID = c.IDUser
JOIN Stream AS s ON c.ChaineID = s.IDChaine
JOIN FollowerUser AS fu ON u.UserID = fu.IDUser
JOIN SubscriberUser AS su ON u.UserID = su.IDUser
JOIN Collection AS col ON c.ChaineID = col.IDChaine
JOIN StreamHistory AS sh ON u.UserID = sh.IdUser
JOIN Notifications AS n ON u.UserID = n.IdUser
JOIN VideoStatistics AS vs ON u.UserID = vs.IdUser
JOIN UserStatistics AS us ON u.UserID = us.IdUser
JOIN ActivityHistory AS ah ON u.UserID = ah.IdUser
JOIN UserLanguages AS ul ON u.UserID = ul.IdUser
JOIN PrivateMessages AS pm ON u.UserID = pm.SenderID
JOIN Polls AS p ON u.UserID = p.IdUser
WHERE  us.Followers < 5000 and c.nbr_abonne > 1000;

-- selection d'un user qui a recu une notif concernant un comabt de nain dont les vu sont superieur a 4000  qui a recu un message privé disant hey qui a u badge de niveau 3  qui a activer Cacher_état_abonnement_carte_spectateur_chat qui a fait un don le 23-11-26
-- 4 
SELECT DISTINCT Users.username FROM Users
JOIN chaine ON chaine.IDUser = Users.UserID
JOIN Notifications ON Notifications.IDUser = Users.UserID
JOIN VideoStatistics ON VideoStatistics.IDUser = Users.UserID
JOIN PrivateMessages ON PrivateMessages.ReceiverID = Users.UserID
JOIN badges ON badges.IDChaine = chaine.ChaineID
JOIN user_settings ON user_settings.IDUser = Users.UserID
JOIN Don ON Don.user_id_donateur = Users.UserID
WHERE Notifications.NotificationContent LIKE '%combat de nain%'
AND VideoStatistics.views > 4000 
AND PrivateMessages.MessageContent LIKE '%Hey%'
AND badges.niveau = 'Niveau 3' 
AND user_settings.Cacher_état_abonnement_carte_spectateur_chat = true 
AND Don.date_don LIKE '%2023-11-26%';


-- 5 
UPDATE UserLanguages 
SET LanguageName = 'Poutine' 
WHERE LanguageName = 'Russian';


-- 6 

SELECT *
FROM Signalement AS s
JOIN IndexTelephonique AS it ON s.IdUserSignalant = it.IdUser
JOIN Moderateur AS m ON s.IdUserSignale = m.IdUserModerateur
JOIN Ban AS b ON s.IdUserSignale = b.IdUserbanni
JOIN Alerte AS a ON s.IdUserSignalant = a.IdChaine
JOIN HistoriqueDiffusion AS hd ON s.IdUserSignale = hd.IdChaine
JOIN Rediffusion AS r ON s.IdUserSignalant = r.IdUserRediffusion
JOIN Users AS u1 ON s.IdUserSignalant = u1.UserID
JOIN Users AS u2 ON s.IdUserSignale = u2.UserID
JOIN Chaine AS c ON s.IdUserSignale = c.chaineID;

-- 7

SELECT DISTINCT emotes.nom FROM emotes
JOIN stream on emotes.IDstream = stream.streamID
JOIN chaine on emotes.IDchaine = chaine.chaineID
JOIN emotestats on emotes.EmotesID = emotestats.IDemote
JOIN alerte on chaine.ChaineID = alerte.IDchaine
JOIN partage on stream.StreamID = partage.IDStream
JOIN collection on chaine.ChaineID = collection.IDChaine;

-- 8

UPDATE bits 
SET emoticons= 'Jebaited' 
WHERE emoticons = 'Paqueta';

-- 9
UPDATE Users
SET email = 'jane@exemple.com'
WHERE username = 'jane_smith';

-- 10

UPDATE chaine
SET nom = 'La Chaine Gaming'
WHERE ChaineID = 5;

-- 11

UPDATE Badges
SET niveau = 3
WHERE BadgesID = 10;

-- 12

UPDATE layout
SET couleur = '#ff0000'  
WHERE IDChaine = 3;

-- 13 

select
    Ban.banID,
    Users.Username as UtilisateurBanni,
    Ban.Date_heure_bannissement,
    Ban.Duree_ban,
    Ban.Raison_ban,
    Admins.Username as AdminAyantBanni,
    Chaine.nom as ChaineConcernee
from Ban
join Users on Ban.IdUserbanni = Users.UserID
left join Moderateur on Ban.IdAdmin = Moderateur.moderateurID
left join Users as Admins on Moderateur.IdUserModerateur = Admins.UserID
left join Chaine on Ban.IDChaine = Chaine.ChaineID;

-- 14 

SELECT
    Users.Username as SenderUsername,
    Partage.url,
    Stream.Titre as StreamTitle,
    Chaine.nom as ChannelName,
    StreamHistory.StreamDate,
    Categories.nom as CategoryName
FROM Partage
JOIN Users ON Partage.user_id_partageur = Users.UserID
JOIN Stream ON Partage.IDStream = Stream.StreamID
JOIN Chaine ON Stream.IDChaine = Chaine.ChaineID
JOIN StreamHistory ON Stream.StreamID = StreamHistory.StreamID
JOIN Categories ON Stream.StreamID = Categories.IDStream
JOIN ParametresCookies ON ParametresCookies.IDUser = Users.UserID
WHERE Partage.PartageID = 1;


-- 15

SELECT
    Stream.StreamID,
    Stream.Titre,
    Stream.Description AS StreamDescription,
    Stream.debut AS HeureDebut,
    Stream.fin AS HeureFin,
    Chaine.ChaineID,
    Chaine.nom AS NomChaine,
    Users.UserID,
    Users.Username AS NomUtilisateur,
    UserStatistics.Followers,
    UserStatistics.Subscribers,
    emotes.nom AS NomEmote,
    Sub.tier AS TypeAbonnement,
    FollowerUser.IDFollower AS IDAbonne
FROM
    Stream
JOIN
    Chaine ON Stream.IDChaine = Chaine.ChaineID
JOIN
    Users ON Chaine.IDUser = Users.UserID
LEFT JOIN
    UserStatistics ON Users.UserID = UserStatistics.IdUser
LEFT JOIN
    emotes ON Chaine.ChaineID = emotes.IDChaine
LEFT JOIN
    Sub ON Users.UserID = Sub.IDUsers
LEFT JOIN
    FollowerUser ON Users.UserID = FollowerUser.IDUser;
