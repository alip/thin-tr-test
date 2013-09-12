#!/bin/sh

bundle install
bundle exec rake db:setup
bundle exec rake spree_sample:load

env LC_ALL=tr_TR.UTF-8 bundle exec rails s thin
