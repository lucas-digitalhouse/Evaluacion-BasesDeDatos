--
-- Creating database structure
--
DROP DATABASE IF EXISTS notes;
CREATE DATABASE notes;
USE notes;
--
-- Table structure for table `users`
--
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    'id' AUTO_INCREMENT NOT NULL,
    'name' VARCHAR(100),
    'email' VARCHAR(100),
    PRIMARY KEY ('id')

)
insert into users (id, name, email) values (1, 'Dilly', 'dcootes0@bluehost.com');
insert into users (id, name, email) values (2, 'Aldus', 'ahundall1@uiuc.edu');
insert into users (id, name, email) values (3, 'Beauregard', 'bstirling2@myspace.com');
insert into users (id, name, email) values (4, 'Amie', 'akrolak3@army.mil');
insert into users (id, name, email) values (5, 'Kassia', 'kkrier4@cpanel.net');
insert into users (id, name, email) values (6, 'Klaus', 'klarkin5@buzzfeed.com');
insert into users (id, name, email) values (7, 'Valli', 'vrodda6@ucoz.com');
insert into users (id, name, email) values (8, 'Cleon', 'cwoolatt7@baidu.com');
insert into users (id, name, email) values (9, 'Emalee', 'edelcastel8@ehow.com');
insert into users (id, name, email) values (10, 'Marv', 'mbeckwith9@mayoclinic.com');
--
-- Table structure for table `notes`
--
DROP TABLE IF EXISTS 'notes';
CREATE TABLE 'notes'(
    'id' AUTO_INCREMENT NOT NULL,
    'title' VARCHAR(100),
    'created_at' timestamp DATETIME NOT NULL,
    'updated_at' timestamp DATETIME NOT NULL,
    'description' TEXT,
    'is_deletable' TINYINT,
    'user_id',
    PRIMARY KEY ('id'),
    FOREIGN KEY ('user_id') REFERENCES 'users' ('id')
)

insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (1, 'Big Jake', '2021-07-17 07:55:57', '2021-07-12 11:32:22', 'BMW', 1, 1);
insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (2, 'Treasure Island', '2021-06-26 20:53:33', '2021-02-08 22:23:03', 'Nissan', 0, 2);
insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (3, 'Experiment Perilous', '2021-04-11 05:37:50', '2020-12-19 18:47:58', 'Audi', 1, 3);
insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (4, 'Flintstone Kids'' Just Say No Special, The', '2021-01-06 02:44:37', '2020-11-08 15:48:05', 'Oldsmobile', 0, 4);
insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (5, 'Thale', '2021-03-06 11:31:32', '2020-09-10 20:44:37', 'Hyundai', 0, 5);
insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (6, 'Swan Princess: The Mystery of the Enchanted Treasure, The', '2021-01-11 06:50:57', '2020-10-22 12:53:38', 'Dodge', 0, 6);
insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (7, 'Harold & Kumar Escape from Guantanamo Bay', '2021-06-10 06:44:41', '2021-05-02 23:21:25', 'GMC', 0, 7);
insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (8, 'Crazy People', '2021-03-24 17:59:51', '2021-07-25 02:49:37', 'Daihatsu', 1, 8);
insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (9, 'Lone Wolf and Cub: Baby Cart to Hades (Kozure Ôkami: Shinikazeni mukau ubaguruma)', '2021-05-08 00:03:09', '2020-10-17 21:48:39', 'Fairthorpe', 0, 9);
insert into notes (id, title, created_at, updated_at, description, id_deletable, user_id) values (10, 'Idiot Box', '2020-12-18 04:06:15', '2020-12-02 03:23:38', 'Aston Martin', 1, 10);


--
-- Table structure for table `notes_categories`
--
DROP TABLE IF EXISTS 'notes_categories';
CREATE TABLE 'notes_categories'(
    'id' AUTO_INCREMENT NOT NULL,
    'note_id',
    'categorie_id',
    PRIMARY KEY ('id'),
    FOREIGN KEY ('note_id') REFERENCES 'notes' ('id'),
    FOREIGN KEY ('categorie_id') REFERENCES 'categories' ('id')
)
insert into notes_categories (id, note_id, categorie_id) values (1, 1, 1);
insert into notes_categories (id, note_id, categorie_id) values (2, 2, 2);
insert into notes_categories (id, note_id, categorie_id) values (3, 3, 3);
insert into notes_categories (id, note_id, categorie_id) values (4, 4, 4);
insert into notes_categories (id, note_id, categorie_id) values (5, 5, 5);
insert into notes_categories (id, note_id, categorie_id) values (6, 6, 6);
insert into notes_categories (id, note_id, categorie_id) values (7, 7, 7);
insert into notes_categories (id, note_id, categorie_id) values (8, 8, 8);
insert into notes_categories (id, note_id, categorie_id) values (9, 9, 9);
insert into notes_categories (id, note_id, categorie_id) values (10, 10, 10);

--
-- Table structure for table `categories`
--
DROP TABLE IF EXISTS 'categories';
CREATE TABLE 'categories'(
    'id' AUTO_INCREMENT NOT NULL,
    'name' VARCHAR(100),
    PRIMARY KEY ('id'),
)
insert into categories (id, name) values (1, 'Marlite Panels (FED)');
insert into categories (id, name) values (2, 'Roofing (Asphalt)');
insert into categories (id, name) values (3, 'Fire Protection');
insert into categories (id, name) values (4, 'Electrical and Fire Alarm');
insert into categories (id, name) values (5, 'Waterproofing & Caulking');
insert into categories (id, name) values (6, 'Glass & Glazing');
insert into categories (id, name) values (7, 'Rebar & Wire Mesh Install');
insert into categories (id, name) values (8, 'Framing (Steel)');
insert into categories (id, name) values (9, 'Masonry & Precast');
insert into categories (id, name) values (10, 'Temp Fencing, Decorative Fencing and Gates');
