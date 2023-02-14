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

Windows to open Rancher local port

C:\Windows\system32>netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=9000 connectaddress=127.0.0.1  connectport=63833


netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=9001 connectaddress=172.23.9.179  connectport=80

Database 
- create user liang with encrypted password 'wowthisisbad';
- grant all privileges on database rails to liang;