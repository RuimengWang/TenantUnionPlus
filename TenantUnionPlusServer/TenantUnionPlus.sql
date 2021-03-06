drop table if exists student;
create table student(
  NetID char(10) not NULL default 'siebel999',
  name varchar(20) not NULL default 'Wallace',
  gender char(10) not NULL default 'none',
  age integer(2) not NULL default 0,
  info varchar(140) not NULL default 'none',
  major char(20) not NULL default 'CS',
  mailbox varchar(30) not NULL default 'none',
  phone_num integer(12) not NULL default 0,

  PRIMARY KEY (NetID)
);

drop table if exists room;
create table room (
  building_name varchar(20) not NULL default 'home',
  location varchar(40) not NULL default'home',
  price integer(4) not NULL default 0,
  bedroom_num integer(1) not NULL default 0,
  bath_num integer(1) not NULL default 0,
  available bit not NULL default 0,
  furnished bit not NULL default 0,
  air_condition bit not NULL default 0,
  dishwasher bit not NULL default 0,
  landury bit not NULL default 0,
  balcony bit not NULL default 0,
  parking bit not NULL default 0,
  pet bit not NULL default 0,
  web varchar(50) not NULL default 'none',
  phone integer(12) not NULL default 0,
  elec bit not NULL default 0,
  water bit not NULL default 0,
  Gas bit not NULL default 0,
  Internet bit not NULL default 0,
  TV bit not NULL default 0,
  info char(100) not NULL default 'none',
  url char(100),
  lat FLOAT(20),
  lng FLOAT(20)
  -- PRIMARY KEY (location) failed if uncomment, not a primary key?
);
drop table if exists gym;
create table gym (
  building_name varchar(20) not NULL default 'home',
  location varchar(40) not NULL default 'home',
  info char(100) not NULL default 'none',
  PRIMARY KEY (building_name)
);

drop table if exists likes;
create table likes (
  location varchar(20) not NULL default 'home',
  NetID varchar(40) not NULL default 'siebel999',
  likeornot integer(1) default -1,
  PRIMARY KEY (location, NetID)
);
