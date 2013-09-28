# Contribution Guidelines #

## Running tests ##

Always run tests first. Quick start for tests (requires a dummy application) :

    bundle install
    bundle exec rake refinery:solr:dummy_app
    bundle exec rake spec

## Making a pull request ##

If you'd like to submit a pull request please adhere to the following:

1. Your code *must* be tested. Please TDD your code!
2. Two-spaces instead of tabs
3. General Rails/Ruby naming conventions for files and classes
