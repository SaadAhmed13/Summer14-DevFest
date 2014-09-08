create table people
(
  person_id  integer,
  name varchar(50),
  year_of_birth int,
  primary key (person_id)
) engine = InnoDB;

create table movies
(
  movie_id integer,
  name varchar(50),
  year integer,
  primary key (movie_id)
) engine = InnoDB;

create table role
(
  movie_id integer,
  person_id integer,
  role varchar(10),
  foreign key (movie_id) references movies (movie_id),
  foreign key (person_id) references people (person_id)
) engine = InnoDB;

create table review
(
  movie_id integer,
  reviewer_name varchar(30),
  review_location varchar(20),
  score integer,
  review_text varchar(100),
  primary key (movie_id, reviewer_name),
  foreign key (movie_id) references movies (movie_id)
) engine = InnoDB;

insert into people values (1, 'Jim', 1965);
insert into people values (2, 'Ron', 1964);
insert into people values (3, 'Audrey', 1973);
insert into people values (4, 'Jim', 1970);
insert into people values (5, 'Renee', 1971);
insert into people values (6, 'Brad', 1972);
insert into people values (7, 'Jim', 1966);
insert into people values (8, 'Julia', 1970);
insert into people values (9, 'Angelina', 1973);
insert into people values (10, 'Renee', 1974);

insert into movies values (1, 'Da Vinci Code', 2006);
insert into movies values (2, 'Me, myself and Irene', 2001);
insert into movies values (3, 'Lana Croft', 1998);
insert into movies values (4, 'Ocean twelve', 2004);
insert into movies values (5, 'syriana', 2005);
insert into movies values (6, 'Fonzy 12', 1998);
insert into movies values (7, 'Harry Potter', 1999);

insert into role values (1, 1, 'actor');
insert into role values (1, 3, 'actor');
insert into role values (1, 2, 'director');
insert into role values (2, 4, 'actor');
insert into role values (2, 10, 'actor');
insert into role values (3, 9, 'actor');
insert into role values (4, 6, 'actor');
insert into role values (4, 7, 'actor');
insert into role values (4, 8, 'actor');
insert into role values (5, 7, 'actor');
insert into role values (6, 7, 'director');
insert into role values (6, 2, 'actor');

insert into review values (1, 'polo', 'variety', 3, 'ok');
insert into review values (1, 'pili', 'berlingske', 4, 'good');
insert into review values (1, 'pulu', 'bt', 3, 'good');
insert into review values (1, 'pala', 'ekstrabladet', 6, 'very good');
insert into review values (2, 'pala', 'ekstrabladet', 5, 'good');
insert into review values (2, 'polo', 'berlingske', 5, 'good');
insert into review values (2, 'pulu', 'politiken', 2, 'not that good');
insert into review values (3, 'polo', 'variety', 2, 'ok');
insert into review values (3, 'pili', 'berlingske', 4, 'good');
insert into review values (3, 'pulu', 'bt', 5, 'good');
insert into review values (3, 'pala', 'ekstrabladet', 6, 'very good');
insert into review values (4, 'polo', 'variety', 4, 'ok');
insert into review values (4, 'pili', 'berlingske', 5, 'good');
insert into review values (4, 'pulu', 'bt', 5, 'good');
insert into review values (4, 'pala', 'ekstrabladet', 6, 'very good');
insert into review values (5, 'polo', 'variety', 1, 'ok');
insert into review values (5, 'pili', 'berlingske', 1, 'good');
insert into review values (6, 'polo', 'variety', 3, 'ok');
insert into review values (6, 'pili', 'berlingske', 5, 'good');
insert into review values (6, 'pala', 'ekstrabladet', 6, 'very good');
insert into review values (7, 'polo', 'variety', 3, 'ok');
insert into review values (7, 'pili', 'berlingske', 4, 'good');
insert into review values (7, 'pulu', 'bt', 3, 'good');
insert into review values (7, 'pala', 'ekstrabladet', 6, 'very good');