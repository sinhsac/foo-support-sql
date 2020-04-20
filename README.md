## Foo: Sql support project

### Run
```shell script
gradlew update
```

### Run with specify environment
```cmd
gradlew update -Penv=preprod
```

### Rollback
```shell script
gradlew db:rollbackCount -PliquibaseCommandValue=xx
```

* `xx` is number you want to rollback, If current id is `5`, when `xx = 2` that mean the sql will rollback to `id = 3`