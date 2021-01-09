# README
[![Build Status](https://travis-ci.com/LucaDev13/spree_docker_hekoku.svg?token=zVcspxHVN1YZiAsuEfi5&branch=master)](https://travis-ci.com/LucaDev13/spree_docker_hekoku)

* Ruby version ruby-2.7.0
* Rails 6.0.3.3

* System dependencies
  [Spree](https://github.com/spree)
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

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

