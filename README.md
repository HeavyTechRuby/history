[![Maintainability](https://api.codeclimate.com/v1/badges/bd75c70806614261603d/maintainability)](https://codeclimate.com/github/sergio-fry/history/maintainability)
[![Hits-of-Code](https://hitsofcode.com/github/sergio-fry/history?branch=main)](https://hitsofcode.com/github/sergio-fry/history/view?branch=main)
[![Test Coverage](https://api.codeclimate.com/v1/badges/5d219f45edafda240b73/test_coverage)](https://codeclimate.com/github/sas2job/history/test_coverage)


# History

## Build

To run locally you should add local ENV via config files: .env.local, .env.test.local. They are added to .gitignore to allow each developer use his own. 

Example config:

```
cat .env.test.local
DATABASE_URL=postgresql://postgres@0.0.0.0:5432/history_test
```

* bundle install
* rails db:create db:migrate
* make

