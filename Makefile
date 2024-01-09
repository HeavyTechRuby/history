test:
	bundle exec bin/rspec -n && bundle exec bin/rspec && bundle exec ./bin/cucumber && bundle exec rubocop -a
