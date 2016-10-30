# swagger rails sample

## Require package

- sqlite3

## Dependencies install

```console
$ bundle
```

## DB setting

```console
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

## Swagger docs json generate

```console
$ rake swagger:docs
```

## Run

```console
$ rails s
```

- swagger access

http://localhost:3000/swagger/
