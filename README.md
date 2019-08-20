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

* Application setup
Install foreman

`gem install foreman`

Note: This does not go in your `Gemfile`

* Rename application
`rails g rename:into My-App-Name`
Rename your display name in `config/locales/en.yml`
Rename your database in `config/database.yml`
`rake db:setup`
`rails generate simple_form:install --bootstrap`



Run:
`foreman start`

* Services (job queues, cache servers, search engines, etc.)
For faster development, this application uses a livereloader plugin with Chrome. [Read more about it here](https://github.com/guard/guard-livereload). This is entirely optional.

* Deployment instructions

Quick Start Heroku

`heroku apps:create myapp`
`heroku rake db:migrate`


* Custom domain
To setup a custom domain with namecheap:

*Heroku*
- Under _Domains and certificates_ click Add domain
- Make sure domain includes www


*Namecheap*
- Set redirect:
`mydomain.tld -> www.mydomain.tld`

- Advanced DNS
`CNAME    |    www    |   xyz.herokudns.com.`
`URL Redirect Record    |    @    |    http://www.mydomain.tld    |   Unmasked`

- Set email catchall to your email

*SSL*
- Make sure you setup Namecheap catchall email first
- Follow [this heroku article](https://devcenter.heroku.com/articles/ssl-endpoint), however you will need to concat your .crt and your .ca-bundle possibly. That can be found [in this article](https://www.namecheap.com/support/knowledgebase/article.aspx/9756/33/installing-a-ssl-certificate-on-heroku-paid-ssl-endpoint). Note, you will not have to update your DNS records most likely, unless the generated Heroku endpoint changes.


* Other Setup Steps

- Google Analytics: Set the UA variable in the .env file
- [Enable newrelic on heroku](https://elements.heroku.com/addons/newrelic); setup a synthetic monitor for uptime (keeps the heroku app from going to sleep, and is good to know if your site is down)



