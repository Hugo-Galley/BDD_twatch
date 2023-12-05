use twitch;

INSERT INTO Users (Username, PasswordHash, Email, DateJoined) VALUES
('john_doe', 'hashed_password_1', 'john@example.com', '2023-01-15'),
('jane_smith', 'hashed_password_2', 'jaane@example.com', '2023-02-20'),
('mike_wilson', 'hashed_password_3', 'mike@example.com', '2023-03-10'),
('sara_adams', 'hashed_password_4', 'sara@example.com', '2023-04-05'),
('chris_miller', 'hashed_password_5', 'chris@example.com', '2023-05-18'),
('emily_brown', 'hashed_password_6', 'emily@example.com', '2023-06-22'),
('alex_carter', 'hashed_password_7', 'alex@example.com', '2023-07-30'),
('laura_jones', 'hashed_password_8', 'laura@example.com', '2023-08-11'),
('kevin_white', 'hashed_password_9', 'kevin@example.com', '2023-09-25'),
('olivia_green', 'hashed_password_10', 'olivia@example.com', '2023-10-14');

INSERT INTO chaine (nom, description, nbr_abonne,lien_reseau_tiktok, lien_reseau_instagram, lien_reseau_discord, lien_reseau_Youtube, lien_reseau_X, lien_reseau_Facebbok, photo_de_profile, certifié, date_created, date_updated, IDUser) VALUES
('Ma Chaîne', 'Description de ma chaîne', 1000,'lien_tiktok', 'lien_instagram', 'lien_discord', 'lien_youtube', 'lien_X', 'lien_facebook', 'lien_photo_profil', true, '2023-01-01', '2023-01-01', 1),
('Autre Chaîne', 'Description d une autre chaîne', 500, 'lien_tiktok2', 'lien_instagram2', 'lien_discord2', 'lien_youtube2', 'lien_X2', 'lien_facebook2', 'lien_photo_profil2', false, '2023-02-01', '2023-02-01', 2),
('Chaîne 3', 'Description de la troisième chaîne', 800,'lien_tiktok3', 'lien_instagram3', 'lien_discord3', 'lien_youtube3', 'lien_X3', 'lien_facebook3', 'lien_photo_profil3', true, '2023-03-01', '2023-03-01', 3),
('Nouvelle Chaîne', 'Description d une nouvelle chaîne', 2000,'lien_tiktok4', 'lien_instagram4', 'lien_discord4', 'lien_youtube4', 'lien_X4', 'lien_facebook4', 'lien_photo_profil4', true, '2023-04-01', '2023-04-01', 1),
('Chaîne Fun', 'Description d une chaîne divertissante', 1200,'lien_tiktok5', 'lien_instagram5', 'lien_discord5', 'lien_youtube5', 'lien_X5', 'lien_facebook5', 'lien_photo_profil5', false, '2023-05-01', '2023-05-01', 2),
('Chaîne 6', 'Description de la sixième chaîne', 300, 'lien_tiktok6', 'lien_instagram6', 'lien_discord6', 'lien_youtube6', 'lien_X6', 'lien_facebook6', 'lien_photo_profil6', true, '2023-06-01', '2023-06-01', 3),
('Super Chaîne', 'Description d une super chaîne', 5000,'lien_tiktok7', 'lien_instagram7', 'lien_discord7', 'lien_youtube7', 'lien_X7', 'lien_facebook7', 'lien_photo_profil7', true, '2023-07-01', '2023-07-01', 1),
('Chaîne Cool', 'Description d une chaîne cool', 1500,'lien_tiktok8', 'lien_instagram8', 'lien_discord8', 'lien_youtube8', 'lien_X8', 'lien_facebook8', 'lien_photo_profil8', true, '2023-08-01', '2023-08-01', 2),
('Ma Chaîne Sport', 'Description de ma chaîne de sport', 700,'lien_tiktok9', 'lien_instagram9', 'lien_discord9', 'lien_youtube9', 'lien_X9', 'lien_facebook9', 'lien_photo_profil9', false, '2023-09-01', '2023-09-01', 3),
('Chaîne Musicale', 'Description d une chaîne de musique', 2500,'lien_tiktok10', 'lien_instagram10', 'lien_discord10', 'lien_youtube10', 'lien_X10', 'lien_facebook10', 'lien_photo_profil10', true, '2023-10-01', '2023-10-01', 1);

INSERT INTO Stream (IDChaine, Titre, Description, debut, fin, en_direct) 
VALUES 
    (1, 'Titre du stream 1', 'Description du stream 1', '2023-11-27 12:00:00', '2023-11-27 14:00:00', TRUE),
    (2, 'Titre du stream 2', 'Description du stream 2', '2023-11-28 15:00:00', '2023-11-28 16:30:00', TRUE),
    (3, 'Titre du stream 3', 'Description du stream 3', '2023-11-29 10:00:00', '2023-11-29 12:00:00', TRUE),
    (4, 'Titre du stream 4', 'Description du stream 4', '2023-11-30 18:00:00', '2023-11-30 20:00:00', FALSE),
    (5, 'Titre du stream 5', 'Description du stream 5', '2023-12-01 14:00:00', '2023-12-01 15:30:00', FALSE),
    (1, 'Titre du stream 6', 'Description du stream 6', '2023-12-02 09:00:00', '2023-12-02 11:00:00', TRUE),
    (2, 'Titre du stream 7', 'Description du stream 7', '2023-12-03 16:00:00', '2023-12-03 18:00:00', TRUE),
    (3, 'Titre du stream 8', 'Description du stream 8', '2023-12-04 11:00:00', '2023-12-04 13:00:00', FALSE),
    (4, 'Titre du stream 9', 'Description du stream 9', '2023-12-05 20:00:00', '2023-12-05 21:30:00', FALSE),
    (5, 'Titre du stream 10', 'Description du stream 10', '2023-12-06 17:00:00', '2023-12-06 18:30:00', TRUE);

INSERT INTO StreamHistory (IdUser, StreamTitle, StreamCategory, StreamDate, DurationMinutes)
VALUES
    (1, 'Titre du stream 1', 'Catégorie 1', '2023-11-27 10:00:00', 120),
    (2, 'Titre du stream 2', 'Catégorie 2', '2023-11-28 15:30:00', 90),
    (3, 'Titre du stream 3', 'Catégorie 1', '2023-11-29 09:00:00', 180),
    (4, 'Titre du stream 4', 'Catégorie 3', '2023-11-30 18:30:00', 150),
    (5, 'Titre du stream 5', 'Catégorie 2', '2023-12-01 14:30:00', 120),
    (1, 'Titre du stream 6', 'Catégorie 3', '2023-12-02 11:30:00', 90),
    (2, 'Titre du stream 7', 'Catégorie 1', '2023-12-03 16:30:00', 150),
    (3, 'Titre du stream 8', 'Catégorie 2', '2023-12-04 10:30:00', 180),
    (4, 'Titre du stream 9', 'Catégorie 1', '2023-12-05 20:30:00', 120),
    (5, 'Titre du stream 10', 'Catégorie 3', '2023-12-06 17:30:00', 90);

INSERT INTO Notifications (IdUser, NotificationType, NotificationContent, Timestamp)
VALUES
    (1, 'Type A', 'Contenu de la notification 1', '2023-11-27 10:00:00'),
    (2, 'Type B', 'Contenu de la notification 2', '2023-11-28 15:30:00'),
    (3, 'Type A', 'Combat de nain', '2023-11-29 09:00:00'),
    (4, 'Type C', 'Contenu de la notification 4', '2023-11-30 18:30:00'),
    (5, 'Type B', 'Contenu de la notification 5', '2023-12-01 14:30:00'),
    (1, 'Type C', 'Contenu de la notification 6', '2023-12-02 11:00:00'),
    (3, 'Type A', 'Contenu de la notification 7', '2023-12-03 16:45:00'),
    (2, 'Type B', 'Combat de nain sur la ligne 7', '2023-12-04 09:30:00'),
    (4, 'Type A', 'Contenu de la notification 9', '2023-12-05 12:15:00'),
    (5, 'Type C', 'Combat de nain a chatelet , belec ', '2023-12-06 17:00:00');

INSERT INTO CategoryHistory (IdUser, CategoryName, DateAdded)
VALUES
    (1, 'Category 1', '2023-11-27'),
    (2, 'Category 2', '2023-11-28'),
    (3, 'Category 3', '2023-11-29'),
    (4, 'Category 4', '2023-11-30'),
    (5, 'Category 5', '2023-12-01'),
    (1, 'Category 6', '2023-12-02'),
    (2, 'Category 7', '2023-12-03'),
    (3, 'Category 8', '2023-12-04'),
    (4, 'Category 9', '2023-12-05'),
    (5, 'Category 10', '2023-12-06');

INSERT INTO VideoStatistics (IdUser, VideoID, Views, Comments)
VALUES
    (1, 101, 5000, 200),
    (2, 102, 3200, 150),
    (3, 103, 7500, 300),
    (4, 104, 2100, 80),
    (5, 105, 6000, 250),
    (1, 106, 4300, 180),
    (2, 107, 2800, 120),
    (3, 108, 5100, 220),
    (4, 109, 1600, 60),
    (5, 110, 7400, 320);

INSERT INTO UserStatistics (IdUser, Followers, Subscribers, Reputation)
VALUES
    (1, 5000, 2000, 100),
    (2, 3200, 1500, 90),
    (3, 7500, 3000, 110),
    (4, 2100, 800, 85),
    (5, 6000, 2500, 95),
    (1, 4300, 1800, 92),
    (2, 2800, 1200, 88),
    (3, 5100, 2200, 94),
    (4, 1600, 600, 80),
    (5, 7400, 3200, 105);

INSERT INTO ActivityHistory (IdUser, ActivityType, ActivityDetails, Timestamp)
VALUES
    (1, 'Login', 'User logged in from mobile device', '2023-11-27 10:15:00'),
    (2, 'Post', 'User posted a new update', '2023-11-26 09:30:00'),
    (3, 'Comment', 'User commented on a post', '2023-11-25 15:45:00'),
    (4, 'Login', 'User logged in from desktop', '2023-11-24 18:20:00'),
    (5, 'Like', 'User liked a video', '2023-11-23 20:00:00'),
    (1, 'Share', 'User shared a post', '2023-11-22 12:10:00'),
    (2, 'Comment', 'User commented on a photo', '2023-11-21 14:55:00'),
    (3, 'Login', 'User logged in from tablet', '2023-11-20 11:30:00'),
    (4, 'Post', 'User posted a video', '2023-11-19 08:45:00'),
    (5, 'Share', 'User shared a link', '2023-11-18 17:00:00');

INSERT INTO UserLanguages (IdUser, LanguageName)
VALUES
    (1, 'English'),
    (1, 'French'),
    (2, 'Spanish'),
    (3, 'German'),
    (3, 'Italian'),
    (4, 'Japanese'),
    (4, 'Korean'),
    (5, 'Chinese'),
    (5, 'Russian'),
    (5, 'Arabic');

INSERT INTO PrivateMessages (SenderID, ReceiverID, MessageContent, Timestamp)
VALUES
    (1, 2, 'Hey there!', '2023-11-27 08:30:00'),
    (2, 1, 'Hi!', '2023-11-27 08:35:00'),
    (3, 1, 'How are you?', '2023-11-27 09:00:00'),
    (1, 3, 'I am good, thank you!', '2023-11-27 09:10:00'),
    (2, 3, 'Want to catch up sometime Hey?', '2023-11-27 10:00:00'),
    (3, 2, 'Sure, let me know when!', '2023-11-27 10:15:00'),
    (4, 1, 'Hello, Hey!', '2023-11-27 11:00:00'),
    (1, 4, 'Hey, what’s up?', '2023-11-27 11:30:00'),
    (4, 2, 'Not much, just chilling, Hey.', '2023-11-27 12:00:00'),
    (2, 4, 'Cool, same here!', '2023-11-27 12:15:00');

INSERT INTO Polls (IdUser, PollQuestion, Options, StartDate, EndDate)
VALUES
    (1, 'What is your favorite color?', 'Red, Blue, Green, Yellow', '2023-11-27 08:00:00', '2023-11-28 08:00:00'),
    (2, 'Which programming language do you prefer?', 'Python, JavaScript, Java, C++', '2023-11-27 09:00:00', '2023-11-28 09:00:00'),
    (3, 'What is your favorite season?', 'Summer, Autumn, Winter, Spring', '2023-11-27 10:00:00', '2023-11-28 10:00:00'),
    (1, 'Who is your favorite author?', 'Stephen King, J.K. Rowling, George R.R. Martin, Agatha Christie', '2023-11-27 11:00:00', '2023-11-28 11:00:00'),
    (2, 'What type of music do you like?', 'Rock, Pop, Hip-hop, Classical', '2023-11-27 12:00:00', '2023-11-28 12:00:00');

INSERT INTO Tag (nom, date_created, date_updated, IDStream)
VALUES
    ('Science', '2023-11-27', '2023-11-27', 5),
    ('Music', '2023-11-27', '2023-11-27', 1),
    ('Fashion', '2023-11-27', '2023-11-27', 3),
    ('Fitness', '2023-11-27', '2023-11-27', 1),
    ('Cooking', '2023-11-27', '2023-11-27', 4),
    ('DIY', '2023-11-27', '2023-11-27', 2),
    ('History', '2023-11-27', '2023-11-27', 3),
    ('Comedy', '2023-11-27', '2023-11-27', 1),
    ('Education', '2023-11-27', '2023-11-27', 4),
    ('Nature', '2023-11-27', '2023-11-27', 5);

INSERT INTO emotes (nom, representation, image_lien, description, debloque, personnalise, date_created, date_updated, IDStream, IDChaine)
VALUES
    ('Smile', ":", 'smile.png', 'A smiling face', TRUE, TRUE, '2023-11-27', '2023-11-27', 1, 1),
    ('Heart', '<3', 'heart.png', 'A heart icon', TRUE, FALSE, '2023-11-27', '2023-11-27', 2, 2),
    ('Laugh', ':D', 'laugh.png', 'A laughing face', TRUE, TRUE, '2023-11-27', '2023-11-27', 1, 1),
    ('Sad', ':', 'sad.png', 'A sad face', FALSE, TRUE, '2023-11-27', '2023-11-27', 3, 2),
    ('Thumbs Up', 'Y', 'thumbs-up.png', 'A thumbs-up icon', TRUE, FALSE, '2023-11-27', '2023-11-27', 2, 3),
    ('Angry', '>:', 'angry.png', 'An angry face', TRUE, TRUE, '2023-11-27', '2023-11-27', 3, 1),
    ('Surprised', 'o_O', 'surprised.png', 'A surprised face', TRUE, FALSE, '2023-11-27', '2023-11-27', 1, 2),
    ('Cool', 'B-', 'cool.png', 'A cool face', FALSE, FALSE, '2023-11-27', '2023-11-27', 2, 1),
    ('Crying', ":'", 'crying.png', 'A crying face', TRUE, TRUE, '2023-11-27', '2023-11-27', 3, 3),
    ('Devil', '>:', 'devil.png', 'A devilish face', TRUE, FALSE, '2023-11-27', '2023-11-27', 1, 3);

INSERT INTO hebergement (nom, localisation, debit_GO, stockage, acces_user, acces_password, modele_SGBD, date_created, date_updated, IDStream)
VALUES
    ('Hebergement 1', 'France', 100.0, 500, 'user1', 'pass1', 'MySQL', '2023-11-27', '2023-11-27', 1),
    ('Hebergement 2', 'USA', 200.0, 1000, 'user2', 'pass2', 'PostgreSQL', '2023-11-27', '2023-11-27', 2),
    ('Hebergement 3', 'Germany', 150.0, 800, 'user3', 'pass3', 'MongoDB', '2023-11-27', '2023-11-27', 3),
    ('Hebergement 4', 'Japan', 120.0, 600, 'user4', 'pass4', 'Oracle', '2023-11-27', '2023-11-27', 1),
    ('Hebergement 5', 'Australia', 180.0, 1200, 'user5', 'pass5', 'SQL Server', '2023-11-27', '2023-11-27', 2),
    ('Hebergement 6', 'Canada', 130.0, 700, 'user6', 'pass6', 'MySQL', '2023-11-27', '2023-11-27', 3),
    ('Hebergement 7', 'UK', 110.0, 550, 'user7', 'pass7', 'PostgreSQL', '2023-11-27', '2023-11-27', 1),
    ('Hebergement 8', 'India', 190.0, 950, 'user8', 'pass8', 'MongoDB', '2023-11-27', '2023-11-27', 2),
    ('Hebergement 9', 'China', 140.0, 720, 'user9', 'pass9', 'Oracle', '2023-11-27', '2023-11-27', 3),
    ('Hebergement 10', 'Brazil', 160.0, 800, 'user10', 'pass10', 'SQL Server', '2023-11-27', '2023-11-27', 1);

INSERT INTO badges (nom, description, niveau, image_lien, date_created, date_updated, IDStream, IDChaine)
VALUES
    ('Badge 1', 'Description du badge 1', 'Niveau 1', 'lien_image1.png', '2023-11-27', '2023-11-27', 1, 1),
    ('Badge 2', 'Description du badge 2', 'Niveau 2', 'lien_image2.png', '2023-11-27', '2023-11-27', 2, 2),
    ('Badge 3', 'Description du badge 3', 'Niveau 3', 'lien_image3.png', '2023-11-27', '2023-11-27', 3, 3),
    ('Badge 4', 'Description du badge 4', 'Niveau 1', 'lien_image4.png', '2023-11-27', '2023-11-27', 1, 1),
    ('Badge 5', 'Description du badge 5', 'Niveau 2', 'lien_image5.png', '2023-11-27', '2023-11-27', 2, 2),
    ('Badge 6', 'Description du badge 6', 'Niveau 3', 'lien_image6.png', '2023-11-27', '2023-11-27', 3, 3),
    ('Badge 7', 'Description du badge 7', 'Niveau 1', 'lien_image7.png', '2023-11-27', '2023-11-27', 1, 1),
    ('Badge 8', 'Description du badge 8', 'Niveau 2', 'lien_image8.png', '2023-11-27', '2023-11-27', 2, 2),
    ('Badge 9', 'Description du badge 9', 'Niveau 3', 'lien_image9.png', '2023-11-27', '2023-11-27', 3, 3),
    ('Badge 10', 'Description du badge 10', 'Niveau 1', 'lien_image10.png', '2023-11-27', '2023-11-27', 1, 1);

INSERT INTO user_settings (
    IDUser, nom, pseudo, bio, prime, email, num, 
    2FA, bannier_image_link, profile_image_link, actif, 
    chuchotement_inconnue, reception_cadeau_chaine_non_suivi, 
    Cacher_état_abonnement_carte_spectateur_chat, Cacher_badge_fondateur, autoister_notif
)
VALUES
    (1, 'John Doe', 'JDoe', 'Welcome to my profile!', true, 'john@example.com', '1234567890', 
    true, 'banner_link_1.png', 'profile_image_1.png', true, 
    true, false, true, false, true),
    (2, 'Alice Smith', 'Alice_S', 'Tech enthusiast!', true, 'alice@example.com', '9876543210', 
    false, 'banner_link_2.png', 'profile_image_2.png', true, 
    true, true, false, false, true),
    (3, 'Elena_R', 'ElenaR', 'Travel lover', false, 'elena@example.com', '6543217890', 
    true, 'banner_link_3.png', 'profile_image_3.png', true, 
    false, true, true, false, true),
    (4, 'Max_W', 'MaxW', 'Nature and sports enthusiast', true, 'max@example.com', '4567890123', 
    true, 'banner_link_4.png', 'profile_image_4.png', true, 
    true, false, false, true, true),
    (5, 'Sophie_M', 'SophieM', 'Passionate about art and music', false, 'sophie@example.com', '7890123456', 
    true, 'banner_link_5.png', 'profile_image_5.png', true, 
    false, true, true, false, true),
    (6, 'John_D', 'JohnDoe', 'Tech enthusiast and coder', true, 'john@example.com', '8901234567', 
    false, 'banner_link_6.png', 'profile_image_6.png', true, 
    true, false, false, true, true),
    (7, 'Emily_W', 'EmiW', 'Passionate traveler and photographer', true, 'emily@example.com', '9012345678', 
    false, 'banner_link_7.png', 'profile_image_7.png', true, 
    true, false, false, true, true),
    (8, 'Max_R', 'MaxR', 'Fitness freak and nutrition enthusiast', false, 'max@example.com', '0123456789', 
    true, 'banner_link_8.png', 'profile_image_8.png', true, 
    false, true, true, false, true),
    (9, 'Sophie_C', 'SophC', 'Tech enthusiast and software developer', true, 'sophie@example.com', '7890123456', 
    true, 'banner_link_9.png', 'profile_image_9.png', true, 
    false, true, true, true, false),
    (10, 'Lucas_M', 'LukeM', 'Passionate about gaming and streaming', false, 'lucas@example.com', '5678901234', 
    false, 'banner_link_10.png', 'profile_image_10.png', true, 
    true, true, false, false, true);
    
INSERT INTO categories (
    nom, image_link, description, date_created, date_updated, 
    type_contenu, mot_cle, nombre_user_actif, IDStream
)
VALUES
    ('Science', 'science_image.png', 'Category for scientific topics', '2023-03-10', '2023-03-10', 
    'Educational', 'science, research, innovation', 300, 2),
    ('Travel', 'travel_image.png', 'Category for travel enthusiasts', '2023-04-18', '2023-04-18', 
    'Lifestyle', 'adventure, destinations, exploration', 150, 4),
    ('Food', 'food_image.png', 'Category for food lovers', '2023-05-25', '2023-05-25', 
    'Culinary', 'recipes, cuisine, restaurants', 420, 1),
    ('Fashion', 'fashion_image.png', 'Category for fashion trends', '2023-06-30', '2023-06-30', 
    'Lifestyle', 'style, clothing, trends', 270, 3),
    ('Technology', 'tech_image.png', 'Category for tech enthusiasts', '2023-07-12', '2023-07-12', 
    'Innovation', 'gadgets, innovation, trends', 380, 5),
    ('Health', 'health_image.png', 'Category for health and wellness', '2023-08-21', '2023-08-21', 
    'Lifestyle', 'wellness, fitness, nutrition', 200, 2),
    ('Art', 'art_image.png', 'Category for art lovers', '2023-09-05', '2023-09-05', 
    'Creative', 'painting, sculpture, design', 180, 1),
    ('Sports', 'sports_image.png', 'Category for sports fans', '2023-10-11', '2023-10-11', 
    'Athletics', 'football, basketball, tennis', 320, 4),
    ('Pets', 'pets_image.png', 'Category for pet enthusiasts', '2023-11-18', '2023-11-18', 
    'Lifestyle', 'dogs, cats, pets', 280, 3),
    ('DIY', 'diy_image.png', 'Category for do-it-yourself enthusiasts', '2023-12-23', '2023-12-23', 
    'Creative', 'crafts, projects, homemade', 230, 5);

INSERT INTO collection (nom, nbr_video, nbr_vue, IDUser, nbr_like, IDChaine)
VALUES
    ('Collection1', 20, 500, 101, 300, 1),
    ('Collection2', 15, 300, 102, 200, 2),
    ('Collection3', 10, 150, 103, 100, 3),
    ('Collection4', 30, 800, 101, 400, 2),
    ('Collection5', 25, 600, 104, 500, 4),
    ('Collection6', 18, 400, 102, 350, 1),
    ('Collection7', 22, 700, 103, 450, 3),
    ('Collection8', 12, 200, 101, 150, 2),
    ('Collection9', 28, 900, 104, 600, 4),
    ('Collection10', 14, 250, 102, 180, 1);


INSERT INTO layout (nom, description, couleur, taille, date_created, date_updated, visible, proprietaire, type_page, ordre_affichage, IDChaine)
VALUES 
    ('Layout1', 'Description du layout 1', '#3498db', 'Grand', '2023-01-01', '2023-01-01', true, 'proprietaire1', 'Accueil', 1, 1),
    ('Layout2', 'Description du layout 2', '#e74c3c', 'Moyen', '2023-01-02', '2023-01-02', true, 'proprietaire2', 'Profil', 2, 2),
    ('Layout3', 'Description du layout 3', '#2ecc71', 'Petit', '2023-01-03', '2023-01-03', false, 'proprietaire3', 'Statistiques', 3, 3),
    ('Layout4', 'Description du layout 4', '#f39c12', 'Grand', '2023-01-04', '2023-01-04', true, 'proprietaire4', 'Discussion', 4, 4),
    ('Layout5', 'Description du layout 5', '#9b59b6', 'Moyen', '2023-01-05', '2023-01-05', false, 'proprietaire5', 'Vidéos', 5, 5),
    ('Layout6', 'Description du layout 6', '#34495e', 'Moyen', '2023-01-06', '2023-01-06', true, 'proprietaire6', 'Profil', 6, 6),
    ('Layout7', 'Description du layout 7', '#95a5a6', 'Grand', '2023-01-07', '2023-01-07', false, 'proprietaire7', 'Discussion', 7, 7),
    ('Layout8', 'Description du layout 8', '#d35400', 'Petit', '2023-01-08', '2023-01-08', true, 'proprietaire8', 'Statistiques', 8, 8),
    ('Layout9', 'Description du layout 9', '#27ae60', 'Grand', '2023-01-09', '2023-01-09', false, 'proprietaire9', 'Accueil', 9, 9),
    ('Layout10', 'Description du layout 10', '#c0392b', 'Petit', '2023-01-10', '2023-01-10', true, 'proprietaire10', 'Vidéos', 10, 10);

INSERT INTO Chat (IDUsers, IDComments, date_envoi)
VALUES 
    (1, 1, '2023-01-01 12:30:00'),
    (2, 2, '2023-01-02 14:00:00'),
    (3, 3, '2023-01-03 16:30:00'),
    (4, 4, '2023-01-04 18:00:00'),
    (5, 5, '2023-01-05 20:00:00'),
    (6, 6, '2023-01-06 10:30:00'),
    (7, 7, '2023-01-07 12:00:00'),
    (8, 8, '2023-01-08 14:30:00'),
    (9, 9, '2023-01-09 16:00:00'),
    (10, 10, '2023-01-10 18:30:00');


INSERT INTO Reactions (IDUsers, IDComments, type_reaction, date_reaction)
VALUES 
    (1, 1, 'Like', '2023-01-01 12:35:00'),
    (2, 2, 'Love', '2023-01-02 14:15:00'),
    (3, 3, 'Haha', '2023-01-03 16:45:00'),
    (4, 4, 'Sad', '2023-01-04 18:30:00'),
    (5, 5, 'Angry', '2023-01-05 20:15:00'),
    (6, 6, 'Like', '2023-01-06 10:45:00'),
    (7, 7, 'Love', '2023-01-07 12:15:00'),
    (8, 8, 'Haha', '2023-01-08 14:45:00'),
    (9, 9, 'Sad', '2023-01-09 16:30:00'),
    (10, 10, 'Angry', '2023-01-10 18:45:00'),
    (5, 5, 'Angry', '2023-01-05 20:15:00');

INSERT INTO Follower (IDUsers, IDFollowedUser, date_follow)
VALUES 
    (1, 2, '2023-01-01 12:30:00'),
    (2, 3, '2023-01-02 14:00:00'),
    (3, 4, '2023-01-03 16:30:00'),
    (4, 5, '2023-01-04 18:00:00'),
    (5, 1, '2023-01-05 20:00:00'),
    (6, 7, '2023-01-06 10:30:00'),
    (7, 8, '2023-01-07 12:00:00'),
    (8, 9, '2023-01-08 14:30:00'),
    (9, 10, '2023-01-09 16:00:00'),
    (10, 1, '2023-01-10 18:30:00');

INSERT INTO Sub (IDUsers, IDChaine, tier, date_debut, date_fin)
VALUES 
    (1, 1, 'tier1', '2023-01-01 12:30:00', '2023-01-31 12:30:00'),
    (2, 2, 'tier2', '2023-02-01 14:00:00', '2023-02-28 14:00:00'),
    (3, 3, 'tier3', '2023-03-01 16:30:00', '2023-03-31 16:30:00'),
    (4, 4, 'tier1', '2023-04-01 18:00:00', '2023-04-30 18:00:00'),
    (5, 5, 'tier2', '2023-05-01 20:00:00', '2023-05-31 20:00:00'),
    (6, 1, 'tier3', '2023-06-01 10:30:00', '2023-06-30 10:30:00'),
    (7, 2, 'tier1', '2023-07-01 12:00:00', '2023-07-31 12:00:00'),
    (8, 3, 'tier2', '2023-08-01 14:30:00', '2023-08-31 14:30:00'),
    (9, 4, 'tier3', '2023-09-01 16:00:00', '2023-09-30 16:00:00'),
    (10, 5, 'tier1', '2023-10-01 18:30:00', '2023-10-31 18:30:00');

INSERT INTO FollowerUser (IDUser, IDFollower)
VALUES 
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (5, 1),
    (6, 7),
    (7, 8),
    (8, 9),
    (9, 10),
    (10, 1);

INSERT INTO SubscriberUser (IDUser, IDSubscriber)
VALUES
    (1, 2),
    (2, 3),
    (3, 1),
    (4, 1),
    (5, 2),
    (6, 3),
    (7, 4),
    (8, 5),
    (9, 1),
    (10, 2);

INSERT INTO Don (user_id_donateur, user_id_receveur, montant, message, date_don)
VALUES
    (1, 2, 50.00, 'Don pour la chaîne de l utilisateur 2', '2023-11-27 10:30:00'),
    (3, 1, 25.50, 'Don pour la chaîne de l utilisateur 1', '2023-11-26 15:45:00'),
    (2, 4, 75.20, 'Don pour la chaîne de l utilisateur 4', '2023-11-28 08:00:00'),
    (5, 3, 30.00, 'Don pour la chaîne de l utilisateur 3', '2023-11-29 12:20:00'),
    (4, 2, 10.00, 'Don pour la chaîne de l utilisateur 2', '2023-11-30 18:10:00'),
    (6, 7, 45.00, 'Don pour la chaîne de l utilisateur 7', '2023-12-01 10:30:00'),
    (8, 9, 60.50, 'Don pour la chaîne de l utilisateur 9', '2023-12-02 12:00:00'),
    (10, 6, 20.00, 'Don pour la chaîne de l utilisateur 6', '2023-12-03 14:30:00'),
    (7, 1, 15.75, 'Don pour la chaîne de l utilisateur 1', '2023-12-04 16:00:00'),
    (9, 5, 35.20, 'Don pour la chaîne de l utilisateur 5', '2023-12-05 18:30:00');

INSERT INTO Pub (IDChaine, Titre, Description, actif)
VALUES
    (1, 'Nouvelle vidéo en direct', 'Rejoignez la diffusion en direct maintenant!', 1),
    (2, 'Événement spécial ce week-end', 'Ne manquez pas notre événement exclusif!', 1),
    (3, 'Annonce importante', 'Découvrez les dernières nouvelles sur notre chaîne.', 0),
    (4, 'Séance de questions-réponses', 'Posez vos questions en direct et obtenez des réponses!', 1),
    (5, 'Mise à jour de la chaîne', 'Découvrez les nouvelles fonctionnalités que nous avons ajoutées.', 1),
    (6, 'Émission spéciale', 'Regardez notre émission spéciale ce soir!', 1),
    (7, 'Démonstration de produit', 'Voyez notre dernier produit en action!', 1),
    (8, 'Avis de produit', 'Partagez vos avis sur nos derniers produits.', 0),
    (9, 'Live Q&A', 'Posez-nous vos questions en direct!', 1),
    (10, 'Rétrospective de l année', 'Revivez les moments forts de l année avec nous.', 1);

INSERT INTO Partage (user_id_partageur, IDStream, url)
VALUES
    (1, 3, 'https://www.twitch.tv/stream_3'),
    (2, 1, 'https://www.twitch.tv/stream_1'),
    (3, 4, 'https://www.twitch.tv/stream_4'),
    (4, 2, 'https://www.twitch.tv/stream_2'),
    (5, 5, 'https://www.twitch.tv/stream_5'),
    (6, 1, 'https://www.twitch.tv/stream_1'),
    (7, 2, 'https://www.twitch.tv/stream_2'),
    (8, 3, 'https://www.twitch.tv/stream_3'),
    (9, 4, 'https://www.twitch.tv/stream_4'),
    (10, 5, 'https://www.twitch.tv/stream_5');

-- Inserts pour la table roles
INSERT INTO roles (nom_role)
VALUES
    ('Admin'),
    ('Modérateur'),
    ('Membre'),
    ('Invité'),
    ('VIP'),
    ('Contributeur'),
    ('Éditeur'),
    ('Ambassadeur'),
    ('Spectateur');


INSERT INTO outils_diffusion (nom, type, description, date_acquisition, fabricant, prix)
VALUES
    ('Caméra HD', 'Caméra', 'Caméra haute définition pour des vidéos de qualité', '2022-01-15', 'Sony', 499.99),
    ('Microphone professionnel', 'Microphone', 'Microphone de studio pour un son clair', '2022-02-01', 'Audio-Technica', 199.99),
    ('Éclairage LED', 'Éclairage', 'Système d éclairage LED pour des diffusions bien éclairées', '2022-03-10', 'Neewer', 149.99),
    ('Ordinateur de streaming', 'Ordinateur', 'PC optimisé pour le streaming en direct', '2022-04-05', 'Alienware', 1999.99),
    ('Table de mixage', 'Audio', 'Table de mixage pour un contrôle audio professionnel', '2022-05-20', 'Behringer', 299.99),
    ('Écran vert', 'Accessoire', 'Écran vert pour des effets spéciaux', '2022-06-15', 'Elgato', 129.99),
    ('Casque sans fil', 'Audio', 'Casque sans fil pour une expérience audio immersive', '2022-07-01', 'Logitech', 149.99),
    ('Webcam 4K', 'Caméra', 'Webcam 4K pour une qualité d image exceptionnelle', '2022-08-10', 'Razer', 299.99),
    ('Micro cravate', 'Microphone', 'Micro cravate pour une captation audio discrète', '2022-09-05', 'Shure', 79.99),
    ('Clavier mécanique', 'Accessoire', 'Clavier mécanique rétroéclairé pour une saisie précise', '2022-10-20', 'Corsair', 129.99);

INSERT INTO settings (nom_parametre, valeur_parametre)
VALUES
    ('Langue', 'Français'),
    ('Thème', 'Sombre'),
    ('Notification_email', 'activé'),
    ('Diffusion_auto', 'désactivé'),
    ('Qualite_video', '1080p'),
    ('Mode_nuit', 'activé'),
    ('Langue', 'Anglais'),
    ('Diffusion_auto', 'activé'),
    ('Qualite_audio', 'Stéréo'),
    ('Notifications_push', 'activé');

INSERT INTO vues_en_direct (titre, date_debut, date_fin, nombre_spectateurs, lien_stream) VALUES
('Émission en direct 1', '2023-11-27 12:00:00', '2023-11-27 14:00:00', 500, 'https://www.twitch.tv/stream_1'),
('Émission en direct 2', '2023-11-28 15:30:00', '2023-11-28 17:30:00', 800, 'https://www.twitch.tv/stream_2'),
('Émission en direct 3', '2023-11-29 18:45:00', '2023-11-29 20:45:00', 1200, 'https://www.twitch.tv/stream_3'),
('Émission en direct 4', '2023-11-30 10:00:00', '2023-11-30 12:00:00', 300, 'https://www.twitch.tv/stream_4'),
('Émission en direct 5', '2023-12-01 14:00:00', '2023-12-01 16:00:00', 600, 'https://www.twitch.tv/stream_5'),
('Émission en direct 6', '2023-12-02 12:00:00', '2023-12-02 14:00:00', 700, 'https://www.twitch.tv/stream_6'),
('Émission en direct 7', '2023-12-03 15:30:00', '2023-12-03 17:30:00', 900, 'https://www.twitch.tv/stream_7'),
('Émission en direct 8', '2023-12-04 18:45:00', '2023-12-04 20:45:00', 1100, 'https://www.twitch.tv/stream_8'),
('Émission en direct 9', '2023-12-05 10:00:00', '2023-12-05 12:00:00', 400, 'https://www.twitch.tv/stream_9'),
('Émission en direct 10', '2023-12-06 14:00:00', '2023-12-06 16:00:00', 800, 'https://www.twitch.tv/stream_10'),
('Émission en direct 11', '2023-12-07 16:30:00', '2023-12-07 18:30:00', 1200, 'https://www.twitch.tv/stream_11'),
('Émission en direct 12', '2023-12-08 20:00:00', '2023-12-08 22:00:00', 600, 'https://www.twitch.tv/stream_12'),
('Émission en direct 13', '2023-12-09 10:15:00', '2023-12-09 12:15:00', 500, 'https://www.twitch.tv/stream_13'),
('Émission en direct 14', '2023-12-10 14:30:00', '2023-12-10 16:30:00', 1000, 'https://www.twitch.tv/stream_14'),
('Émission en direct 15', '2023-12-11 18:00:00', '2023-12-11 20:00:00', 700, 'https://www.twitch.tv/stream_15');


INSERT INTO donnees_demographiques_utilisateurs (utilisateur_id, age, genre, pays) VALUES
(1, 28, 'Homme', 'France'),
(2, 35, 'Femme', 'Canada'),
(3, 22, 'Non binaire', 'États-Unis'),
(4, 30, 'Femme', 'Royaume-Uni'),
(5, 25, 'Homme', 'Allemagne'),
(6, 32, 'Femme', 'Espagne'),
(7, 28, 'Homme', 'Italie'),
(8, 25, 'Femme', 'Brésil'),
(9, 30, 'Homme', 'Japon'),
(10, 22, 'Femme', 'Australie'),
(11, 29, 'Homme', 'Inde'),
(12, 35, 'Femme', 'Mexique'),
(13, 27, 'Homme', 'Russie'),
(14, 26, 'Femme', 'Chine'),
(15, 33, 'Homme', 'Afrique du Sud');

INSERT INTO tarifs (nom_forfait, description, prix)
VALUES
('Forfait de base', 'Accès standard aux fonctionnalités', 9.99),
('Forfait premium', 'Accès complet à toutes les fonctionnalités', 19.99),
('Forfait professionnel', 'Fonctionnalités avancées pour les utilisateurs professionnels', 29.99),
('Forfait entreprise', 'Solutions personnalisées pour les entreprises', 49.99),
('Forfait étudiant', 'Réduction spéciale pour les étudiants', 14.99),
('Forfait famille', 'Accès partagé pour toute la famille', 39.99),
('Forfait artiste', 'Options exclusives pour les créateurs', 24.99),
('Forfait sport', 'Contenu exclusif sur les sports', 29.99),
('Forfait musique', 'Expérience musicale premium', 12.99),
('Forfait voyage', 'Découvrez le monde avec des avantages exclusifs', 34.99);

INSERT INTO salons_discussion_prives (nom_salon, description, date_creation, createur_id) VALUES
('Salon 1', 'Discussion privée sur divers sujets', '2023-11-27', 1),
('Salon 2', 'Échanges confidentiels entre membres', '2023-11-28', 2),
('Salon 3', 'Réunions stratégiques', '2023-11-29', 3),
('Salon 4', 'Débats sensibles', '2023-11-30', 4),
('Salon 5', 'Planning de l équipe', '2023-12-01', 5),
('Salon 6', 'Discussion privée sur les voyages', '2023-12-02', 6),
('Salon 7', 'Échanges sur la technologie', '2023-12-03', 7),
('Salon 8', 'Débats artistiques', '2023-12-04', 8),
('Salon 9', 'Discussion gastronomique', '2023-12-05', 9),
('Salon 10', 'Espace littéraire', '2023-12-06', 10),
('Salon 11', 'Débats scientifiques', '2023-12-07', 11),
('Salon 12', 'Mode et style', '2023-12-08', 12),
('Salon 13', 'Santé et bien-être', '2023-12-09', 13),
('Salon 14', 'Cinéphiles', '2023-12-10', 14),
('Salon 15', 'Jeux vidéo', '2023-12-11', 15);

INSERT INTO Signalement (IdUserSignalant, IdUserSignale, Date_heure_signalement, Type_signalement, Description_signalement, Etat_signalement) VALUES
(1, 2, '2023-11-27 10:30:00', 'Comportement inapproprié', 'Langage offensant', 'En attente'),
(3, 4, '2023-11-28 12:45:00', 'Contenu inapproprié', 'Images choquantes', 'Traitement en cours'),
(5, 1, '2023-11-29 14:15:00', 'Spam', 'Messages répétitifs', 'Résolu'),
(2, 3, '2023-11-30 16:00:00', 'Harcèlement', 'Comportement intimidant', 'En attente'),
(4, 5, '2023-12-01 18:30:00', 'Contenu non autorisé', 'Publicité non autorisée', 'Résolu'),
(6, 7, '2023-12-02 10:30:00', 'Comportement inapproprié', 'Langage offensant', 'En attente'),
(8, 9, '2023-12-03 12:45:00', 'Contenu inapproprié', 'Images choquantes', 'Traitement en cours'),
(10, 6, '2023-12-04 14:15:00', 'Spam', 'Messages répétitifs', 'Résolu');



INSERT INTO IndexTelephonique (IdUser, Numero_telephone) VALUES
(1, '+33123456789'),
(2, '+14155552671'),
(3, '+12025551234'),
(4, '+442071231234'),
(5, '+4915112345678'),
(6, '+34987654321'),
(7, '+390112223344'),
(8, '+5511998877665'),
(9, '+81345678901'),
(10, '+61234567890');


INSERT INTO Moderateur (IdUserModerateur, Date_debut_moderation, Date_fin_moderation, IdChaine) VALUES
(1, '2023-11-27 10:00:00', '2023-11-30 10:00:00', 1),
(2, '2023-11-28 12:00:00', '2023-11-30 12:00:00', 2),
(3, '2023-11-29 14:00:00', '2023-11-30 14:00:00', 3),
(4, '2023-11-30 16:00:00', '2023-12-01 16:00:00', 4),
(5, '2023-12-01 18:00:00', '2023-12-02 18:00:00', 5);

INSERT INTO Ban (IdUserbanni, Date_heure_bannissement, Duree_ban, Raison_ban, IdAdmin, IDChaine) VALUES
(1, '2023-11-27 10:30:00', 72, 'Violation des règles', 1, 1),
(2, '2023-11-28 12:45:00', 48, 'Contenu inapproprié', 2, 2),
(3, '2023-11-29 14:15:00', 24, 'Harcèlement', 3, 3),
(4, '2023-11-30 16:00:00', 120, 'Comportement nuisible', 4, 4),
(5, '2023-12-01 18:30:00', 72, 'Violation des conditions d utilisation', 5, 5);


INSERT INTO Alerte (Date_heure_alerte, Type_alerte, Description_alerte, IdChaine)
VALUES
    ('2023-12-02 11:30:00', 'Comportement inapproprié', 'Alerte pour langage offensant', 1),
    ('2023-12-03 13:45:00', 'Contenu suspect', 'Alerte pour activité inhabituelle', 2),
    ('2023-12-04 16:00:00', 'Violations répétées', 'Alerte pour comportement récurrent', 3),
    ('2023-12-05 18:15:00', 'Contenu interdit', 'Alerte pour contenu non autorisé', 4),
    ('2023-12-06 19:45:00', 'Activité frauduleuse', 'Alerte pour activité suspecte', 5),
    ('2023-12-07 12:00:00', 'Comportement inapproprié', 'Alerte pour langage offensant', 1),
    ('2023-12-08 14:15:00', 'Contenu suspect', 'Alerte pour activité inhabituelle', 2),
    ('2023-12-09 17:30:00', 'Violations répétées', 'Alerte pour comportement récurrent', 3),
    ('2023-12-10 19:45:00', 'Contenu interdit', 'Alerte pour contenu non autorisé', 4),
    ('2023-12-11 20:30:00', 'Activité frauduleuse', 'Alerte pour activité suspecte', 5);

INSERT INTO HistoriqueDiffusion (Date_heure_diffusion, Duree_diffusion, Titre_diffusion, Categorie_diffusion, Est_rediffusion, IdChaine) VALUES
('2023-11-27 15:00:00', 120, 'Diffusion en direct', 'Gaming', FALSE, 1),
('2023-11-28 14:30:00', 90, 'Débat politique', 'Actualités', FALSE, 2),
('2023-11-29 18:00:00', 180, 'Concert en ligne', 'Musique', FALSE, 3),
('2023-11-30 17:15:00', 60, 'Tutoriel créatif', 'Éducation', FALSE, 4),
('2023-12-01 19:30:00', 150, 'Séance de questions-réponses', 'Variété', FALSE, 5),
('2023-12-02 15:30:00', 120, 'Autre diffusion en direct', 'Gaming', FALSE, 1),
('2023-12-03 14:00:00', 90, 'Débat économique', 'Actualités', FALSE, 2),
('2023-12-04 18:30:00', 180, 'Performance artistique', 'Musique', FALSE, 3),
('2023-12-05 17:45:00', 60, 'Tutoriel avancé', 'Éducation', FALSE, 4),
('2023-12-06 20:00:00', 150, 'Réponses en direct', 'Variété', FALSE, 5);

INSERT INTO Rediffusion (IdUserRediffusion, Date_heure_rediffusion, Duree_rediffusion, Titre_rediffusion, Categorie_rediffusion, IdDiffusionOriginale, IdChaine) VALUES
(1, '2023-11-28 16:00:00', 120, 'Rediffusion de la première diffusion', 'Gaming', 1, 1),
(2, '2023-11-29 16:30:00', 90, 'Rediffusion du débat politique', 'Actualités', 2, 2),
(3, '2023-11-30 20:00:00', 180, 'Rediffusion du concert en ligne', 'Musique', 3, 3),
(4, '2023-12-01 18:15:00', 60, 'Rediffusion du tutoriel créatif', 'Éducation', 4, 4),
(5, '2023-12-02 20:30:00', 150, 'Rediffusion de la séance de questions-réponses', 'Variété', 5, 5),
(6, '2023-12-03 16:00:00', 120, 'Autre rediffusion de la première diffusion', 'Gaming', 6, 1),
(7, '2023-12-04 16:30:00', 90, 'Rediffusion du débat économique', 'Actualités', 7, 2),
(8, '2023-12-05 20:00:00', 180, 'Rediffusion de la performance artistique', 'Musique', 8, 3),
(9, '2023-12-06 18:15:00', 60, 'Rediffusion du tutoriel avancé', 'Éducation', 9, 4),
(10, '2023-12-07 20:30:00', 150, 'Rediffusion des réponses en direct', 'Variété', 10, 5);

INSERT INTO ParametresAudio (NomParametre, ValeurParametre, Description, QualiteAudio, DateCreation, DateModification, IDUser, Volume, IDChaine) VALUES
('Paramètre 1', 'Valeur 1', 'Description du paramètre 1', 'Élevée', '2023-11-27', '2023-11-28', 1, 80, 1),
('Paramètre 2', 'Valeur 2', 'Description du paramètre 2', 'Moyenne', '2023-11-28', '2023-11-29', 2, 60, 2),
('Paramètre 3', 'Valeur 3', 'Description du paramètre 3', 'Faible', '2023-11-29', '2023-11-30', 3, 40, 3),
('Paramètre 4', 'Valeur 4', 'Description du paramètre 4', 'Élevée', '2023-11-30', '2023-12-01', 4, 75, 4),
('Paramètre 5', 'Valeur 5', 'Description du paramètre 5', 'Moyenne', '2023-12-01', '2023-12-02', 5, 70, 5),
('Paramètre 6', 'Valeur 6', 'Description du paramètre 6', 'Élevée', '2023-12-02', '2023-12-03', 6, 85, 1),
('Paramètre 7', 'Valeur 7', 'Description du paramètre 7', 'Moyenne', '2023-12-03', '2023-12-04', 7, 55, 2),
('Paramètre 8', 'Valeur 8', 'Description du paramètre 8', 'Faible', '2023-12-04', '2023-12-05', 8, 45, 3),
('Paramètre 9', 'Valeur 9', 'Description du paramètre 9', 'Élevée', '2023-12-05', '2023-12-06', 9, 70, 4),
('Paramètre 10', 'Valeur 10', 'Description du paramètre 10', 'Moyenne', '2023-12-06', '2023-12-07', 10, 65, 5);

INSERT INTO ParametresCookies (TypeCookie, Description, DateCreation, DateModification, IDUser, IDChaine) VALUES
('Essentiel', 'Paramètres essentiels', '2023-11-27', '2023-11-28', 1, 1),
('Fonctionnel', 'Paramètres fonctionnels', '2023-11-28', '2023-11-29', 2, 2),
('Analytique', 'Paramètres analytiques', '2023-11-29', '2023-11-30', 3, 3),
('Marketing', 'Paramètres marketing', '2023-11-30', '2023-12-01', 4, 4),
('Essentiel', 'Paramètres essentiels', '2023-12-01', '2023-12-02', 5, 5),
('Fonctionnel', 'Paramètres fonctionnels', '2023-12-02', '2023-12-03', 1, 1),
('Analytique', 'Paramètres analytiques', '2023-12-03', '2023-12-04', 2, 2),
('Marketing', 'Paramètres marketing', '2023-12-04', '2023-12-05', 3, 3),
('Essentiel', 'Paramètres essentiels', '2023-12-05', '2023-12-06', 4, 4),
('Fonctionnel', 'Paramètres fonctionnels', '2023-12-06', '2023-12-07', 5, 5);


INSERT INTO Transactions (SenderID, ReceiverID, Amount, TransactionType, Description, Timestamp) VALUES
(1, 2, 50.00, 'Donation', 'Soutien à la diffusion', '2023-11-27 10:30:00'),
(2, 3, 25.00, 'Donation', 'Appréciation du contenu', '2023-11-28 12:45:00'),
(3, 4, 30.00, 'Purchase', 'Achat d un pack premium', '2023-11-29 14:15:00'),
(4, 5, 15.00, 'Donation', 'Soutien à la créativité', '2023-11-30 16:00:00'),
(5, 1, 20.00, 'Donation', 'Encouragement à la diffusion', '2023-12-01 18:30:00'),
(2, 1, 40.00, 'Donation', 'Soutien à la diffusion', '2023-12-02 10:00:00'),
(3, 2, 15.00, 'Donation', 'Appréciation du contenu', '2023-12-03 11:30:00'),
(4, 3, 25.00, 'Purchase', 'Achat d un pack premium', '2023-12-04 13:45:00'),
(5, 4, 10.00, 'Donation', 'Soutien à la créativité', '2023-12-05 15:30:00'),
(1, 5, 18.00, 'Donation', 'Encouragement à la diffusion', '2023-12-06 17:00:00');

INSERT INTO Favorites (UserID, ContentID, ContentType, Timestamp) VALUES
(1, 1, 'Video', '2023-11-27 12:00:00'),
(2, 3, 'LiveStream', '2023-11-28 14:30:00'),
(3, 2, 'Post', '2023-11-29 16:45:00'),
(4, 5, 'Video', '2023-11-30 18:15:00'),
(5, 4, 'LiveStream', '2023-12-01 20:00:00'),
(1, 2, 'Video', '2023-12-02 12:30:00'),
(2, 4, 'LiveStream', '2023-12-03 14:00:00'),
(3, 1, 'Post', '2023-12-04 16:15:00'),
(4, 3, 'Video', '2023-12-05 18:00:00'),
(5, 5, 'LiveStream', '2023-12-06 19:45:00');


INSERT INTO panel (nom, type_panel, description, IDChaine, prix) VALUES
('Panel 1', 'Informations', 'Description du panel 1', 1, 10.00),
('Panel 2', 'Promotion', 'Description du panel 2', 2, 15.00),
('Panel 3', 'Événements', 'Description du panel 3', 3, 20.00),
('Panel 4', 'Statistiques', 'Description du panel 4', 4, 25.00),
('Panel 5', 'Personnalisation', 'Description du panel 5', 5, 30.00),
('Panel 6', 'Informations', 'Description du panel 6', 1, 12.00),
('Panel 7', 'Promotion', 'Description du panel 7', 2, 18.00),
('Panel 8', 'Événements', 'Description du panel 8', 3, 22.00),
('Panel 9', 'Statistiques', 'Description du panel 9', 4, 28.00),
('Panel 10', 'Personnalisation', 'Description du panel 10', 5, 32.00);


INSERT INTO premium (actif, IDUser) VALUES
(true, 1),
(false, 2),
(true, 3),
(false, 4),
(true, 5),
(false, 6),
(true, 7),
(false, 8),
(true, 9),
(true, 10);

INSERT INTO messagesysteme (nom, motif, DateCreation) VALUES
('Maintenance planifiée', 'Mise à jour du système', '2023-11-27'),
('Nouvelle fonctionnalité', 'Introduction du chat en direct', '2023-11-28'),
('Problème résolu', 'Correction des erreurs de connexion', '2023-11-29'),
('Événement à venir', 'Webinaire sur les dernières fonctionnalités', '2023-11-30'),
('Mise à jour importante', 'Nouvelles options de personnalisation', '2023-12-01'),
('Nouveau design', 'Introduction d une mise à jour esthétique', '2023-12-02'),
('Maintenance d urgence', 'Réparation rapide des problèmes de serveur', '2023-12-03'),
('Annonce spéciale', 'Préparation d un événement exclusif', '2023-12-04'),
('Downtime planifié', 'Serveur indisponible pour maintenance', '2023-12-05'),
('Remerciements', 'Appréciation pour la communauté active', '2023-12-06');

INSERT INTO cagnotte (nom, description, montant, IDUser, DateCreation, DateModification) VALUES
('Cagnotte Médical', 'Aide pour les frais médicaux', 1075, 1, '2023-11-27', '2023-11-28'),
('Cagnotte Études', 'Soutien financier pour les études', 800, 2, '2023-11-28', '2023-11-29'),
('Cagnotte Communauté', 'Projets communautaires locaux', 1200, 2, '2023-11-29', '2023-11-30'),
('Cagnotte Animaux', 'Aide pour les refuges animaliers', 500, 4, '2023-11-30', '2023-12-01'),
('Cagnotte Urgence', 'Fonds d urgence pour les situations critiques', 1500, 5, '2023-12-01', '2023-12-02'),
('Cagnotte Solidarité', 'Aide aux personnes en difficulté', 1200, 7, '2023-12-02', '2023-12-03'),
('Cagnotte Culture', 'Soutien aux projets artistiques', 900, 2, '2023-12-03', '2023-12-04'),
('Cagnotte Environnement', 'Financement de projets écologiques', 1500, 3, '2023-12-04', '2023-12-05'),
('Cagnotte Technologie', 'Investissement dans les innovations technologiques', 8000, 7, '2023-12-05', '2023-12-06'),
('Cagnotte Santé mentale', 'Aide aux initiatives de bien-être mental', 1000, 5, '2023-12-06', '2023-12-07');

INSERT INTO suggestion (nom, IDUser, contenu) VALUES
('Amélioration du chat', 1, 'Proposition d ajouter des emojis au chat en direct'),
('Nouvelle fonctionnalité', 2, 'Suggère l introduction d une option de mode sombre'),
('Feedback sur l interface', 3, 'Propose une refonte de l interface utilisateur'),
('Idées de contenu', 4, 'Suggère des thèmes pour les prochaines diffusions en direct'),
('Amélioration de la navigation', 5, 'Proposition d un menu plus convivial pour la navigation'),
('Fonctionnalité de sondage', 1, 'Proposition d ajouter des sondages interactifs'),
('Nouveau type de contenu', 2, 'Suggère d introduire des diffusions de réalité virtuelle'),
('Amélioration de la modération', 3, 'Propose des outils de modération avancés'),
('Suggestions de cadeaux', 4, 'Suggère une fonction de cadeau pour les spectateurs'),
('Intégration de musique', 5, 'Proposition d intégrer une playlist musicale personnalisable');

INSERT INTO emotestats (IDemote, nbr_utilisation, dernier_utilisation) VALUES
(1, 500, '2023-12-02'),
(2, 350, '2023-12-03'),
(3, 200, '2023-12-04'),
(4, 100, '2023-12-05'),
(5, 50, '2023-12-06'),
(6, 300, '2023-12-07'),
(7, 150, '2023-12-08'),
(8, 400, '2023-12-09'),
(9, 250, '2023-12-10'),
(10, 180, '2023-12-11');

INSERT INTO AdRevenue (montant, IDChaine) VALUES
(500, 1),
(300, 2),
(800, 3),
(250, 4),
(400, 5),
(700, 1),
(150, 2),
(600, 3),
(350, 4),
(450, 5);

INSERT INTO viewer_history (nom_stream, nom_streamer, temps_sur_stream, IDStream) VALUES
('Gaming Fun', 'Player123', 2.5, 1),
('Tech Talk', 'TechGuru', 1.8, 2),
('Music Jam', 'MusicMaestro', 3.0, 3),
('Educational Insights', 'LearnMaster', 2.2, 4),
('Entertainment Hour', 'Showman', 1.5, 5),
('Cooking Delights', 'ChefCuisine', 2.8, 1),
('Travel Adventures', 'Explorer123', 1.3, 2),
('Fitness Boost', 'FitFreak', 2.5, 3),
('Comedy Club', 'LaughMaster', 1.7, 4),
('Art Showcase', 'ArtisticSoul', 2.0, 5);

INSERT INTO merchandising (nom, lien_photo, lien_site, prix, IDChaine) VALUES
('T-shirt Gaming', 'img/tshirt_gaming.jpg', 'https://example.com/gaming-merch', 25.99, 1),
('Tech Enthusiast Mug', 'img/tech_mug.jpg', 'https://example.com/tech-merch', 15.50, 2),
('Music Lover Hoodie', 'img/music_hoodie.jpg', 'https://example.com/music-merch', 39.99, 3),
('Educational Poster Set', 'img/edu_poster_set.jpg', 'https://example.com/edu-merch', 19.95, 4),
('Comedy Sticker Pack', 'img/comedy_stickers.jpg', 'https://example.com/comedy-merch', 9.99, 5),
('Cooking Apron', 'img/cooking_apron.jpg', 'https://example.com/cooking-merch', 29.99, 1),
('Travel Adventure Backpack', 'img/travel_backpack.jpg', 'https://example.com/travel-merch', 49.95, 2),
('Fitness Water Bottle', 'img/fitness_bottle.jpg', 'https://example.com/fitness-merch', 12.75, 3),
('Artistic Canvas Print', 'img/art_canvas_print.jpg', 'https://example.com/art-merch', 35.00, 4),
('Entertainment Cap', 'img/entertainment_cap.jpg', 'https://example.com/entertainment-merch', 14.99, 5);

INSERT INTO chatbot (nom, fonction, actif, DateCreation, DateModification, IDStream) VALUES
('StreamerBot', 'Gestion des commandes de stream', true, '2023-11-27', '2023-11-28', 1),
('QuizMaster', 'Animation de quiz interactif', true, '2023-11-28', '2023-11-29', 2),
('MusicMaestro', 'Diffusion de musique à la demande', true, '2023-11-29', '2023-11-30', 3),
('QABot', 'Réponses aux questions fréquentes', true, '2023-11-30', '2023-12-01', 4),
('JokesterBot', 'Diffusion de blagues aléatoires', true, '2023-12-01', '2023-12-02', 5),
('CookingAssistant', 'Suggestions de recettes en direct', true, '2023-12-02', '2023-12-03', 6),
('WorkoutBuddy', 'Entraînement physique en direct', true, '2023-12-03', '2023-12-04', 7),
('HoroscopeHelper', 'Prédictions astrologiques interactives', true, '2023-12-04', '2023-12-05', 8),
('ArtCritic', 'Critique artistique en direct', true, '2023-12-05', '2023-12-06', 9),
('EntertainmentBot', 'Animations variées pour divertir', true, '2023-12-06', '2023-12-07', 10);

INSERT INTO theme (nom, dark, personalise, IDUser) VALUES
('Classique', false, '#ffffff', 1),
('Sombre', true, '#292929', 2),
('Nature', false, '#4caf50', 3),
('Ciel étoilé', true, '#0c1445', 4),
('Minimaliste', true, '#e0e0e0', 5),
('Rose Pastel', false, '#ffb6c1', 6),
('Ocean Blue', true, '#1565c0', 7),
('Feuilles d automne', true, '#8d6e63', 8),
('Cyberpunk', true, '#00ff00', 9),
('Violet Vibrant', false, '#9c27b0', 10);

INSERT INTO verification_mail (email, code, verifier, IDUser) VALUES
('john.doe@email.com', 'ABC123', true, 1),
('alice.smith@email.com', 'XYZ789', true, 2),
('bob.jones@email.com', '123456', false, 3),
('emma.white@email.com', '789ABC', false, 4),
('david.miller@email.com', '456DEF', true, 5),
('sarah.williams@email.com', 'GHI789', false, 6),
('michael.brown@email.com', 'JKL321', true, 7),
('olivia.taylor@email.com', 'MNO987', false, 8),
('james.jackson@email.com', 'PQR654', true, 9),
('lily.martin@email.com', 'STU321', true, 10);

INSERT INTO bits (nombre, prix, emoticons) VALUES
(1, 1.99, 'Kappa'),
(2, 5.49, 'PogChamp'),
(3, 10.00, 'DansGame'),
(4, 25.50, 'LUL'),
(5, 50.99, 'Kreygasm'),
(6, 100.00, 'BibleThump'),
(7, 250.75, '4Head'),
(8, 500.00, 'Jebaited'),
(9, 1000.50, 'FeeGoodMan'),
(10, 9999.99, 'Pepega');

INSERT INTO tickets (sujet, description, IDUser) VALUES
(' assistance technique du à problème de connexion', 'Je ne peux pas me connecter à mon compte. Aidez-moi, s il vous plaît.', 1),
('Question sur la facturation', 'Je ne comprends pas certaines charges sur ma facture. Pouvez-vous expliquer ?', 2),
('Signalement de contenu inapproprié', 'J ai trouvé un contenu inapproprié sur la plateforme. Merci de prendre des mesures.', 3),
('Demande de fonctionnalité', 'J aimerais suggérer une nouvelle fonctionnalité pour améliorer l expérience utilisateur.', 4),
('Problème de diffusion en direct', 'Ma diffusion en direct a des problèmes techniques. Comment puis-je les résoudre ?', 5),
('Demande d assistance technique', 'Mon application rencontre des erreurs fréquentes. Besoin d aide pour résoudre ce problème.', 7),
('Question sur les paramètres du compte', 'Comment puis-je modifier mes paramètres de confidentialité ?', 7),
('Réclamation concernant un bannissement', 'J ai été banni de manière injuste. Pouvez-vous examiner ma situation ?', 8),
('Demande de récupération de compte', 'J ai oublié mon mot de passe. Comment puis-je récupérer mon compte ?', 9),
('Question sur les règles de la communauté', 'Où puis-je trouver les règles de la communauté ? Je veux m assurer de les suivre.', 10);


INSERT INTO Abonnement (nbr_abonnement, liste_abonement, IDUser) VALUES
(50, 'Alice, Bob, Charlie, David, Emma', 1),
(30, 'Fiona, George, Hannah, Ian, Jessica', 2),
(20, 'Kevin, Laura, Michael, Natalie, Oliver', 3),
(40, 'Patricia, Quentin, Rachel, Samuel, Tamara', 4),
(25, 'Victor, Wendy, Xavier, Yvonne, Zachary', 5),
(35, 'Eva, Frank, Grace, Henry, Isabella', 6),
(45, 'Jacob, Kelly, Liam, Megan, Noah', 7),
(15, 'Olivia, Peter, Quinn, Rose, Sean', 8),
(10, 'Tara, Ulysses, Vanessa, Walter, Xena', 9),
(60, 'Yasmine, Zane, Abigail, Benjamin, Chloe', 10);

INSERT INTO API (nom, clée, DateCreation, IDUser) VALUES
('API de Notifications', 'aBcDeFgHiJkLmNoPqRsTuVwXyZ0123456789', '2023-11-27', 1),
('API de Statistiques', '1a2b3c4d5e6f7g8h9i0j1k2l3m4n5o6p', '2023-11-28', 2),
('API de Géolocalisation', 'KlMnOpQrStUvWxYz0123456789abcdefghij', '2023-11-29', 3),
('API de Paiement', '3p1h9e2q8k7y4z0x5w6i5u4a7m8r9e0n1t', '2023-11-30', 4),
('API d Authentification', 'bCgVxYz0123456789aBdEfHiJkLmNoPqRsTuW', '2023-12-01', 5),
('API de Messagerie', 'JkLmNoPqRsTuVwXyZ0123456789aBcDeFgHi', '2023-12-02', 6),
('API de Médias Sociaux', '2h9i0j1k3l4m5n6o7p8q9r0s1t2u3v4w5x6y', '2023-12-03', 7),
('API de Reconnaissance d Image', '5o6p7q8r9s0t1u2v3w4x5y6z0123456789abcde', '2023-12-04', 8),
('API de Traduction', 'aBcDeFgHiJkLmNoPqRsTuVwXyZ0123456789', '2023-12-05', 9),
('API de Calendrier', '8h9i0j1k2l3m4n5o6p7q9r0s1t2u3v4w5x6y7z', '2023-12-06', 10);


INSERT INTO carte_cadeau (clée, prix, DateCreation, DateActivation, IDUser) VALUES
('AbCdEfGhIjKlMnOpQrStUvWxYz0123456789', 20.00, '2023-11-27', '2023-11-28', 1),
('1a2b3c4d5e6f7g8h9i0j1k2l3m4n5o6p', 30.00, '2023-11-28', '2023-11-29', 2),
('KlMnOpQrStUvWxYz0123456789abcdefghij', 50.00, '2023-11-29', '2023-11-30', 3),
('3p1h9e2q8k7y4z0x5w6i5u4a7m8r9e0n1t', 10.00, '2023-11-30', '2023-12-01', 4),
('bCgVxYz0123456789aBdEfHiJkLmNoPqRsTuW', 25.00, '2023-12-01', '2023-12-02', 5),
('JkLmNoPqRsTuVwXyZ0123456789aBcDeFgHi', 40.00, '2023-12-02', '2023-12-03', 6),
('2h9i0j1k3l4m5n6o7p8q9r0s1t2u3v4w5x6y', 15.00, '2023-12-03', '2023-12-04', 7),
('5o6p7q8r9s0t1u2v3w4x5y6z0123456789abcde', 60.00, '2023-12-04', '2023-12-05', 8),
('aBcDeFgHiJkLmNoPqRsTuVwXyZ0123456789', 35.00, '2023-12-05', '2023-12-06', 9),
('8h9i0j1k2l3m4n5o6p7q9r0s1t2u3v4w5x6y7z', 45.00, '2023-12-06', '2023-12-07', 10);

INSERT INTO blog (nom_article, description_article, nbr_vue_article, DateCreation, modifier) VALUES
('Premier article', 'Description de l article numéro 1.', 150, '2023-11-27', '5'),
('Le monde du streaming', 'Exploration des tendances actuelles du streaming.', 220, '2023-11-28', '4'),
('Recettes de cuisine en direct', 'Découvrez des recettes de cuisine passionnantes en streaming.', 180, '2023-11-29', '3'),
('Actualités technologiques', 'Les dernières nouvelles et tendances technologiques.', 300, '2023-11-30', '5'),
('Voyage autour du monde', 'Partagez des expériences de voyage passionnantes.', 250, '2023-12-01', '4'),
('Concert live en ligne', 'Assistez à des performances musicales en direct depuis chez vous.', 280, '2023-12-02', '5'),
('Conseils de productivité', 'Améliorez votre productivité avec ces conseils pratiques.', 200, '2023-12-03', '3'),
('Exploration de l univers', 'Un voyage fascinant à travers les mystères de l espace.', 320, '2023-12-04', '4'),
('Séances d entraînement en direct', 'Rejoignez des séances d entraînement interactives en streaming.', 240, '2023-12-05', '3'),
('Réflexions philosophiques', 'Des discussions profondes sur des sujets philosophiques.', 180, '2023-12-06', '2');

INSERT INTO FAQ (question, reponse) VALUES
('Qu est-ce que le streaming ?', 'Le streaming est une méthode de diffusion de contenu multimédia en continu sur Internet.'),
('Comment puis-je modifier mon mot de passe ?', 'Vous pouvez modifier votre mot de passe dans les paramètres de votre compte.'),
('Quels sont les avantages d un compte premium ?', 'Un compte premium offre un accès à des fonctionnalités avancées et sans publicité.'),
('Comment puis-je contacter le support technique ?', 'Vous pouvez contacter notre support technique via le formulaire de contact sur notre site web.'),
('Quelles sont les exigences minimales pour diffuser en direct ?', 'Les exigences minimales incluent une connexion Internet stable et un équipement de diffusion adéquat.'),
('Puis-je utiliser le même compte sur plusieurs appareils ?', 'Oui, vous pouvez utiliser le même compte sur plusieurs appareils.'),
('Comment puis-je signaler un contenu inapproprié ?', 'Utilisez la fonction de signalement sur la page du contenu pour signaler toute violation.'),
('Quels modes de paiement acceptez-vous ?', 'Nous acceptons les cartes de crédit, PayPal et d autres méthodes de paiement en ligne sécurisées.'),
('Y a-t-il une période d essai pour le compte premium ?', 'Oui, nous proposons une période d essai gratuite pour le compte premium.'),
('Comment annuler mon abonnement premium ?', 'Vous pouvez annuler votre abonnement premium à tout moment dans les paramètres de votre compte.');

INSERT INTO Drops (nom, montant, jeux, IDUser) VALUES
('Lootbox n°1', 20, 'Jeu A', 1),
('Coffre mystérieux', 15, 'Jeu B', 2),
('Drop rare', 30, 'Jeu C', 3),
('Sac d équipement', 25, 'Jeu D', 4),
('Cristal enchanté', 18, 'Jeu E', 5),
('Récompense quotidienne', 10, 'Jeu F', 1),
('Loot spécial', 22, 'Jeu A', 2),
('Coffret surprise', 28, 'Jeu B', 3),
('Mallette de trésors', 35, 'Jeu C', 4),
('Sac à surprises', 15, 'Jeu D', 5);

INSERT INTO historique_connexion (Dateconnexion, temps_connecter, IDUser) VALUES
('2023-11-27', '08:30:00', 1),
('2023-11-27', '10:45:00', 2),
('2023-11-28', '12:15:00', 3),
('2023-11-29', '15:00:00', 4),
('2023-11-30', '17:30:00', 5),
('2023-12-01', '09:45:00', 1),
('2023-12-02', '11:20:00', 2),
('2023-12-03', '14:10:00', 3),
('2023-12-04', '16:45:00', 4),
('2023-12-05', '18:20:00', 5);

