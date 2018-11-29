# pixela client

### development

1. clone this project
1. install ruby and bundler if it is not installed
1. bundle install
1. create database
1. run!

```bash
$ git clone git@github.com/ryosms/pixela_client
$ cd pixela_client
$ cat .ruby-version | rbenv install
$ gem install bundler
$ rbenv rehash
$ bundle install --path vendor/bundle
$ docker-compose up -d
$ bin/rails db:create
$ bin/rails db:migrate
$ bin/rails s
```
