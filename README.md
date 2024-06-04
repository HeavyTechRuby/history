[![Maintainability](https://api.codeclimate.com/v1/badges/bd75c70806614261603d/maintainability)](https://codeclimate.com/github/sergio-fry/history/maintainability)
[![Hits-of-Code](https://hitsofcode.com/github/sergio-fry/history?branch=main)](https://hitsofcode.com/github/sergio-fry/history/view?branch=main)
[![codecov](https://codecov.io/gh/sergio-fry/history/graph/badge.svg?token=T46MLVIHEE)](https://codecov.io/gh/sergio-fry/history)

# History

## Build

To run locally you should add local ENV via config files: .env.local, .env.test.local. They are added to .gitignore to allow each developer use his own. 

Example config:

```bash
echo "DATABASE_URL=postgresql://postgres@0.0.0.0:5432/history_test" >> .env.test.local
cat .env.test.local
```

* bundle install
* rails db:create db:migrate
* make

