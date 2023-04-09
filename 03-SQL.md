# SQL


```r
library(DBI)
db = dbConnect(RSQLite::SQLite(), dbname = "db.sqlite")
```


```sql
CREATE TABLE users AS
  SELECT 1 AS user_id, DATETIME("2023-01-01") AS created_at
  UNION ALL
  SELECT 2 AS user_id, DATETIME("2023-01-01") AS created_at
  UNION ALL
  SELECT 3 AS user_id, DATETIME("2023-01-01") AS created_at;


CREATE TABLE trackers AS
  SELECT 1 AS user_id, 1 AS trackable_id, DATETIME("2023-01-04") AS created_at
  UNION ALL
  SELECT 2 AS user_id, 1 AS trackable_id, DATETIME("2023-01-02") AS created_at
  UNION ALL
  SELECT 2 AS user_id, 1 AS trackable_id, DATETIME("2023-01-02") AS created_at;

```


```sql
SELECT * FROM users;
SELECT * FROM trackers;
```


<div class="knitsql-table">


Table: (\#tab:unnamed-chunk-3)3 records

|user_id |created_at          |
|:-------|:-------------------|
|1       |2023-01-01 00:00:00 |
|2       |2023-01-01 00:00:00 |
|3       |2023-01-01 00:00:00 |

</div>
