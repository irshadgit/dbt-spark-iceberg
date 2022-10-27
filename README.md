# dbt-spark-iceberg
Sample project to demonstrate dbt iceberg integeration using spark thrift.
# Technology stack
* [dbt](https://www.getdbt.com/) - 1.3.0
* [dbt-spark](https://pypi.org/project/dbt-spark/) - 1.3.0
* [docker](https://docs.docker.com/) - 20.10.20 or later
* [docker-compose](https://docs.docker.com/compose/compose-file/compose-file-v3/) - 3.7 or later
# Contents
- [dbt_iceberg_sample](dbt_iceberg_sample/README.md) - dbt project folder.
- [docker](docker/Readme.md) - Docker & Docker compose file.
Doker - https://github.com/dbt-labs/dbt-spark/blob/main/dbt/include/spark/macros/materializations/incremental/validate.sql
Docker command - 
docker run \
--network=host \
--mount type=bind,source=/home/irshad/Documents/my-repo/dbt-spark-iceberg/dbt_iceberg_sample,target=/usr/app \
--mount type=bind,source=/home/irshad/Documents/my-repo/dbt-spark-iceberg/dbt_iceberg_sample,target=/root/.dbt/ \
ghcr.io/dbt-labs/dbt-spark \
ls

dbt docker run link - https://docs.getdbt.com/docs/get-started/docker-install

docker exec -it spark-thrift /usr/spark/bin/beeline -u "jdbc:hive2://spark-thrift:10000/default;auth=noSasl" -n root


