# RUN PROJECT ON DEVELOMENT

## BACK

- On php MyAdmin, create a new database : tasks_db

- Go to /Student-management-system
- Copy the .env.example to .env

- on .env file, update the database name :
  DB_DATABASE=test_laravel_modules

- Launch composer install
- Launch php artisan migrate
- Launch php artisan key:generate
- Launch php artisan storage:link ( to allow the image folder to be public)
- Launch php artisan serve