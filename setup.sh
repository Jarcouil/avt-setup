#!/bin/bash

mkdir "repos"

cd repos

git clone https://github.com/Jarcouil/Absorption-Visualization-Tool

git clone https://github.com/Jarcouil/AVT-frontend

cd Absorption-Visualization-Tool

cp .env.example prod.env

sudo nano prod.env

npm i

npx knex --knexfile ./knexfile.js migrate:latest

npx knex --knexfile ./knexfile.js seed:run

npm install -g @angular/cli

cd ../AVT-frontend/avt-frontend

npm i

sudo chmod -R 777 ../../../repos

