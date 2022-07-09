### AIRFLOW - Examples
```java
The purpose of the project is to exploe the functionalities provided by Airflow.
```


### How to integrate Airflow in Existing Pipelines?
```console
Option 1 : Create a new LLD
1. Low level classes being the simple tasks. []
2. High level classes would be the Pipelines/Dags. []
```
```
Option 2: Integrate the airflow in existing pipelines.
1. Look at the implementation of existing Pipelines. []
2. Look for the common low level design of pipelines. []
3. Look at all the methods of creating dags/flows in Aiflow. []
4. Choose the method which requires minimum effort to implement i.e. minimal code addition/change. []
5. In the existing project, create a directory including the airflow version of the pipelin. []
6. Figure out how to manage configuration/connections/iterations for Airflow a pipeline. []
7. If each dag represents a pipeline, then figure out what optimal tasks would be. []
8. Do all the steps for a simplest pipeline and replicate on others. []
9. Things to remembers - 
        1. Reruning of tasks should not affect the end result.(use upsert instead of insert) []
        2. Avoid making unnecessay RPC just for ensuring readability or uniform design. []
        3. Reusability of tasks should be kept in mind. []
10. Write test cases for the tasks that might cause issues in rerunning. []
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
    $ airflow scheduler > /home/hanchau/proj/airflow/logs/scheduler.logs &
```
6. Removing the example dags
```console
    $ pkill -f airflow
    $ nano airflow.cfg
    $ # set 'load_examples = False' in the airflow.cfg
    $ airflow webserver -p 8025 --stderr logs/airflow-webserver.err --stdout logs/airflow-webserver.out -l logs/airflow-webserver.log --pid logs/aiflow-webserver.pid -D
    $ airflow scheduler > /home/hanchau/airflow/logs/scheduler.logs &

```
7. Creating users for Aiflow
```
    $ airflow users create --username anuj --firstname "Anuj" --lastname "Chauhan" --role Admin --email "an12ch98@gmail.com"
```
8. MYSQL
```
    <!-- Connecting/Confirming connection -->
    $ mysql -h 127.0.0.1 -P 3306 -u airflow_user -p<airflow_user_pass_> [connection denied error resolved]
    
    <!-- Deleting the example Dags from db itself-->
    use aiflow;
    show tables;
    select * from dag;
    delete from dag where 1 = 1;
    select * from dag;
```

### References
1. [Aiflow Setup](https://towardsdatascience.com/master-apache-airflow-how-to-install-and-setup-the-environment-in-10-minutes-61dad52d5239)
2. [Changing Backend MySQL](https://airflow.apache.org/docs/apache-airflow/stable/howto/set-up-database.html#other-configuration-options)
3. [Creating & Scheduling DAGs](https://airflow.apache.org/docs/apache-airflow/1.10.1/scheduler.html)

