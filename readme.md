[![buddy pipeline](https://app.buddy.works/gokapital/api-softfusion/pipelines/pipeline/128035/badge.svg?token=96c4dd2e008e7b88c8e38f3a854cbdec01a3fc655a6afe628a189ed4aa2df495 "buddy pipeline")](https://app.buddy.works/gokapital/api-softfusion/pipelines/pipeline/128035)
[![buddy pipeline](https://app.buddy.works/gokapital/api-softfusion/pipelines/pipeline/128031/badge.svg?token=96c4dd2e008e7b88c8e38f3a854cbdec01a3fc655a6afe628a189ed4aa2df495 "buddy pipeline")](https://app.buddy.works/gokapital/api-softfusion/pipelines/pipeline/128031)
# LARAVEL API MERQUERO

The APIs are HTTP-based RESTful APIs. API request and response bodies are formatted in JSON.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

The Laravel framework has a few system requirements. Of course, all of these requirements are satisfied by the Laravel Homestead virtual machine, so it's highly recommended that you use Homestead as your local Laravel development environment.

However, if you are not using Homestead, you will need to make sure your server meets the following requirements:

```
* PHP >= 7.1.20
* JSON PHP Extension
* Composer
* Git
```

### Installing

```
git clone  https://alejandrocepeda25@bitbucket.org/alejandrocepeda25/merqueo.git
cd merqueo
```

Laravel utilizes Composer to manage its dependencies. So, before using Laravel, make sure you have Composer installed on your machine.

Command in your terminal:
```
composer install
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
php artisan migrate 
```

## Authors

* **Alejandro Cepeda** - *alejandrocepeda25@gmail.com*
