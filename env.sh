export AIRFLOW_HOME='/home/hanchau/proj/airflow'
export AIRFLOW_CONFIG=$AIRFLOW_HOME/airflow.cfg
export AIRFLOW__CORE__SQL_ALCHEMY_CONN=mysql+mysqlconnector://airflow_user:airflow_pass@127.0.0.1:3306/airflow_db
export AIRFLOW__CORE__SQL_ALCHEMY_SCHEMA="airflow_db"
export AIRFLOW__CORE__DAGS_FOLDER=$AIRFLOW_HOME/dags
export AIRFLOW__CORE__LOAD_EXAMPLES='false'
