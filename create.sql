
-- table for visitors
CREATE TABLE visitor (
visitor_id INTEGER PRIMARY KEY,
gender TEXT NOT NULL, 
birth_year INT NOT NULL, 
first_date TEXT NOT NULL);


-- table for the articles
CREATE TABLE article (
article_id INTEGER PRIMARY KEY,
quantity INTEGER, 
name TEXT NOT NULL,
category TEXT);


-- table for the article giveaway to visitors
CREATE TABLE article_giveaway (
out_id INTEGER PRIMARY KEY, 
article_id INTEGER NOT NULL, 
visitor_id INTEGER NOT NULL, 

FOREIGN KEY (article_id)
REFERENCES article(article_id)
ON DELETE CASCADE,

FOREIGN KEY (visitor_id)
REFERENCES visitor(visitor_id)
ON DELETE CASCADE);


-- table for the services which are offered
CREATE TABLE service (
service_id INTEGER PRIMARY KEY,
name TEXT NOT NULL,
duration INTEGER);


-- table for which services are used
CREATE TABLE service_use (
use_id INTEGER PRIMARY KEY,
date TEXT NOT NULL,
service_id INTEGER NOT NULL,
visitor_id INTEGER NOT NULL,

FOREIGN KEY (service_id)
REFERENCES service(service_id)
ON DELETE CASCADE,

FOREIGN KEY (visitor_id)
REFERENCES visitor(visitor_id)
ON DELETE CASCADE);


-- table of the volunteer workers
CREATE TABLE volunteer (
volunteer_id INTEGER PRIMARY KEY,
email TEXT UNIQUE,
name TEXT);


-- table of the workplan, when and who worked from volunteer
CREATE TABLE workplan (
work_id INTEGER PRIMARY KEY,
volunteer_id INTEGER NOT NULL,

FOREIGN KEY (volunteer_id)
REFERENCES volunteer(volunteer_id)
ON DELETE CASCADE);


-- add phone to volunteer table
ALTER TABLE volunteer 
ADD phone TEXT;


-- add date to workplan table
ALTER TABLE workplan 
ADD date TEXT NOT NULL;


-- add name to visitor
ALTER TABLE visitor
ADD name TEXT;


-- add date to article giveaway
ALTER TABLE article_giveaway
ADD date TEXT;



