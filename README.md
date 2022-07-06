### AIRFLOW - Examples
```java
The purpose of the project is to exploe the functionalities provided by Airflow.
```


### Cheat Sheet
1. Starting ariflow webserver --> 
```console
    $ airflow webserver -p 8025 --stderr logs/airflow-webserver.err --stdout logs/airflow-webserver.out -l logs/airflow-webserver.log --pid logs/aiflow-webserver.pid -D
```
2. Initializing the db -->
```console
    $ airflow db init
```
3. Killing the webserver -->
```console
    $ pkill -f airflow-webserver
```
4. Before starting the webserver --> Ensure the monitor pid is not locked
```console
    $ rm logs/airflow-webserver-monitor.pid
    $ <Command# 1>
```
5. Starting the Scheduler
```console
    $ airflow scheduler > /home/hanchau/airflow/logs/scheduler.logs &
```
6. Removing the example dags
```console
    $ pkill -f airflow
    $ nano airflow.cfg
    $ # set 'load_examples = False' in the airflow.cfg
    $ airflow webserver -p 8025 --stderr logs/airflow-webserver.err --stdout logs/airflow-webserver.out -l logs/airflow-webserver.log --pid logs/aiflow-webserver.pid -D
    $ airflow scheduler > /home/hanchau/airflow/logs/scheduler.logs &

```


### References
1. [Aiflow Setup](https://towardsdatascience.com/master-apache-airflow-how-to-install-and-setup-the-environment-in-10-minutes-61dad52d5239)
2. [Changing Backend MySQL](https://airflow.apache.org/docs/apache-airflow/stable/howto/set-up-database.html#other-configuration-options)
3. [Creating & Scheduling DAGs](https://airflow.apache.org/docs/apache-airflow/1.10.1/scheduler.html)

