[![Maintainability](https://codeclimate.com/github/HeavyTechRuby/history.png)](https://codeclimate.com/github/HeavyTechRuby/history)
[![Hits-of-Code](https://hitsofcode.com/github/HeavyTechRuby/history?branch=main)](https://hitsofcode.com/github/HeavyTechRuby/history/view?branch=main)
[![Test Coverage](https://api.codeclimate.com/v1/badges/a3a5daaab0db5b759cc3/test_coverage)](https://codeclimate.com/github/HeavyTechRuby/history/test_coverage)

# History

## Build

To run locally you should add local ENV via config files: .env.local, .env.test.local. They are added to .gitignore to allow each developer use his own. 

Example config:

```bash
echo "DATABASE_URL=postgresql://postgres@0.0.0.0:5432/history_test
      POSTGRES_PASSWORD=testpassword" >> .env.test.local
cat .env.test.local
```

* bundle install
* rails db:create db:migrate
* make

