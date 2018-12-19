[![buddy pipeline](https://app.buddy.works/gokapital/api-softfusion/pipelines/pipeline/128035/badge.svg?token=96c4dd2e008e7b88c8e38f3a854cbdec01a3fc655a6afe628a189ed4aa2df495 "buddy pipeline")](https://app.buddy.works/gokapital/api-softfusion/pipelines/pipeline/128035)
[![buddy pipeline](https://app.buddy.works/gokapital/api-softfusion/pipelines/pipeline/128031/badge.svg?token=96c4dd2e008e7b88c8e38f3a854cbdec01a3fc655a6afe628a189ed4aa2df495 "buddy pipeline")](https://app.buddy.works/gokapital/api-softfusion/pipelines/pipeline/128031)
# API SOFTFUSION

The Softfusion APIs are HTTP-based RESTful APIs that use OAuth 2.0 for authorization. API request and response bodies are formatted in JSON.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

The Laravel framework has a few system requirements. Of course, all of these requirements are satisfied by the Laravel Homestead virtual machine, so it's highly recommended that you use Homestead as your local Laravel development environment.

However, if you are not using Homestead, you will need to make sure your server meets the following requirements:

```
* PHP >= 7.1.3
* OpenSSL PHP Extension
* PDO PHP Extension
* Mbstring PHP Extension
* Tokenizer PHP Extension
* XML PHP Extension
* Ctype PHP Extension
* JSON PHP Extension
* Composer
* NPM/Node
* Git
```

### Installing

Log into Bitbucket Server

```
git clone https://msuarez-gokapital@bitbucket.org/softfusion-gokapital/api-softfusion.git
cd api-Softfusion
```

Laravel utilizes Composer to manage its dependencies. So, before using Laravel, make sure you have Composer installed on your machine.

Command in your terminal:
```
composer install
```

Run npm install
```
npm install
```

Copy .env.example file to .env on root folder.
```
copy .env.example .env (windows)
cp .env.example .env (ubuntu)
```

Open your .env file and change:
```
DB_DATABASE=
DB_USERNAME=
DB_PASSWORD=
```

Run follow commands

```
php artisan key:generate
php artisan migrate 
php artisan db:seed
php artisan passport:install
php artisan storage:link
```



## Running the tests

Run the automated tests for this system, API Softfusion use PHPunit for test every endpoint

```
./vendor/bin/phpunit
```

## API Endpoints

For all endpoints documentation visit:

* [Api documentation](https://Softfusion.docs.apiary.io)

## Forge Laravel
Para modificar la base de datos se debe agregar los siguientes comandos

```
php artisan migrate:refresh --force
php artisan passport:install
php artisan db:seed --force
```

## Built With

* [Laravel](https://laravel.com/docs/5.6) - The artisan framework used version 5.6


## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://bitbucket.org/msuarez-Softfusion/api-Softfusion/src#tags). 

## Authors

* **Mauricio Suarez Vega** - *msuarez@gokapital.com*
* **Cristian Cespedes** - *ccespedes@gokapital.com* 
* **Carlos Moreno** - *carlos@gokapital.com*
* **Alejandro Cepeda** - *alejandro@gokapital.com*
