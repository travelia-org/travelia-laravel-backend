#!/bin/bash

set -e

if [ ! -f artisan ]; then
  echo "👉 Laravel no detectado. Instalando..."
  composer create-project laravel/laravel . --prefer-dist
  echo "👉 Laravel creado"
fi

# if env file doesn't exist, create it.
if [ ! -f .env ]; then
  echo "Copying .env.example → .env"
  cp .env.example .env
fi

echo "Replacing variables DB in .env..."
sed -i "s/^DB_DATABASE=.*/DB_DATABASE=${DB_NAME}/" .env
sed -i "s/^DB_USERNAME=.*/DB_USERNAME=${DB_USER}/" .env
sed -i "s/^DB_PASSWORD=.*/DB_PASSWORD=${DB_PASS}/" .env
sed -i "s/^DB_HOST=.*/DB_HOST=db/" .env
sed -i "s/^DB_PORT=.*/DB_PORT=3306/" .env

# If key is not yet generated
if ! grep -q "^APP_KEY=" .env || [ -z "$(grep "^APP_KEY=" .env | cut -d= -f2)" ]; then
  echo "🔑 Generating APP_KEY..."
  php artisan key:generate
fi

php artisan migrate || true

php artisan serve --host=0.0.0.0 --port=8000
