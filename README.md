# reimagined-disco-db
Migrations for the reimagined-disco database

# db run

```
docker run --name reimagined-disco-db       \
  -p 5432:5432                              \
  -e POSTGRES_PASSWORD_FILE=$HOME/private/db-passwd \
  -e POSTGRES_USER=reimagined-disco         \
  -e POSTGRES_DB=reimagined-disco           \
  -d                                        \
    postgres:14
```
or under Windows:
```
docker run --name reimagined-disco-db       ^
  -p 5432:5432                              ^
  -e POSTGRES_PASSWORD_FILE=%cd%/private/db-passwd ^
  -e POSTGRES_USER=reimagined-disco         ^
  -e POSTGRES_DB=reimagined-disco           ^
  -d                                        ^
    postgres:14
```

Cleanup:
```
docker rm reimagined-disco-db
```