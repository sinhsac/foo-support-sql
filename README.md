## Foo: Sql support project

### Run
```shell script
gradlew update
```

### Run with specific environment
```cmd
gradlew update -Penv=preprod
```

### Rollback
```shell script
gradlew db:rollbackCount -PliquibaseCommandValue=xx
```

* `xx` is number you want to rollback, If current id is `5`, when `xx = 2` that mean the sql will rollback to `id = 3`

### Configuration
Open file `build.gradle` in the lines : 
```editorconfig
liquibase {
	activities {
		dev {
			changeLogFile changeLog
			url 'jdbc:mysql://localhost:3306/foo_test?createDatabaseIfNotExist=true&useUnicode=true&characterEncoding=utf-8'
			username 'root'
			password 'root'
		}
		runList = "$env".isEmpty() ? "dev" : "$env"
	}
}
```
you can add more environment as bellow:
```editorconfig
   
        dev {
            changeLogFile changeLog
            .....
        preprod {
            changeLogFile changeLog
            url 'jdbc:mysql://mysq-server:3306/my_database?createDatabaseIfNotExist=true&useUnicode=true&characterEncoding=utf-8'
            username 'mysqlusername'
            password 'mysqlpass'
        }
        .......... another environment

        runList = "$env".isEmpty() ? "dev" : "$env"
	}
}
```