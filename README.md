# README
[![Build Status](https://travis-ci.com/LucaDev13/spree_shop_melcado.svg?token=zVcspxHVN1YZiAsuEfi5&branch=master)](https://travis-ci.com/LucaDev13/spree_shop_melcado.svg)

* Ruby version ruby-3.0.0
* Rails 6.1.3.1

* System dependencies
  [Spree](https://github.com/spree)
  [Spree static content](https://github.com/spree-contrib/spree_static_content)
* Configuration
  - Create and manage secrets as described in [Rails guides](https://guides.rubyonrails.org/security.html#environmental-security)
  - Use Docker compose to start the app as described in [Docker docs](https://docs.docker.com/compose/rails)
  - Install Spree as described in [Spree docs](https://github.com/spree/spree/tree/4-1-stable#installation-options)
* Run migrations
  - run `heroku run rails db:migrate`

* Database initialization
 - run `heroku run rails db:create`

* How to run the test suite
- The test suite is automatically run on travis
- To run tests locally run `RAILS_ENV=development bundle exec rspec spec`

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

