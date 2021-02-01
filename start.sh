#!/bin/sh

# Rails
docker-compose run web rails new . --force --api
docker-compose build
# rails database.yml修正
docker run web rails db:create

# Vue.js
docker-compose run app sh # appコンテナ起動
vue create .
