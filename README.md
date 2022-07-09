# README
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/LucaDev13/spree_shop_melcado/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/LucaDev13/spree_shop_melcado/tree/master)

* Ruby version ruby-3.0.4
* Rails 6.1.5.1

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
- The test suite is automatically run on CircleCI
- To run tests locally run `RAILS_ENV=development bundle exec rspec spec`

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
  Automated deployment from CircleCI to Heroku. See .circleci/config.yml

