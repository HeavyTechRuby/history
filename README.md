[![Maintainability](https://codeclimate.com/github/HeavyTechRuby/history.png)](https://codeclimate.com/github/HeavyTechRuby/history)
[![Hits-of-Code](https://hitsofcode.com/github/HeavyTechRuby/history?branch=main)](https://hitsofcode.com/github/HeavyTechRuby/history/view?branch=main)
[![codecov](https://codecov.io/gh/HeavyTechRuby/history/graph/badge.svg?token=T46MLVIHEE)](https://codecov.io/gh/HeavyTechRuby/history)

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

