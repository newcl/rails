# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


- install gem pg 
sudo apt-get install postgresql-contrib libpq-dev

- create user 
- create user liang with encrypted password 'wowthisisbad';
- grant all privileges on database sample_db to user_name;
- create user liang WITH SUPERUSER CREATEDB LOGIN ENCRYPTED PASSWORD 'wowthisisbad';


- allow postgresql remote access
vim /etc/postgresql/12/main/postgresql.conf

- pg_hba.conf


host    all             all              0.0.0.0/0                       md5
host    all             all              ::/0                            md5

create db

rake db:create
