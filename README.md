[![Maintainability](https://api.codeclimate.com/v1/badges/08a1c56c0220109b03d21d0f0ce62db45737be38239f2fd3d955e452312600eb/maintainability)](https://codeclimate.com/github/sergio-fry/history/maintainability)
[![codecov](https://codecov.io/gh/sergio-fry/history/graph/badge.svg?token=T46MLVIHEE)](https://codecov.io/gh/sergio-fry/history)

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

