# gcp_data_engineering

## Google End-to-End Data Engineering Project
This project demonstrates a data pipeline on Google Cloud Platform (GCP) that involves data ingestion, transformation, and analysis. The pipeline is designed using various GCP services like Google Cloud Storage (GCS), Dataproc, BigQuery, and managed using Apache Airflow. All infrastructure is provisioned using Terraform.

### Project Overview
The main objective of this project is to process raw CSV data files stored in GCS, transform them using a PySpark job running on Dataproc, and then load the transformed data into BigQuery for further analysis.
### Architecture
The data pipeline consists of the following steps:

* Data Ingestion:

    * Raw CSV files are uploaded to a source GCS bucket.
* Data Processing:

    * A PySpark job, running on a Dataproc cluster, reads the CSV files from the source GCS bucket.
    * The PySpark job performs data transformations and cleaning operations.
    * The processed data is then stored in a target GCS bucket.
      
* Data Loading:

  * The processed data from the GCS target bucket is transferred to a BigQuery table for analysis.

* Workflow Orchestration:

 Apache Airflow is used to create and manage the entire workflow, ensuring that each step is executed in the correct sequence.


### Infrastructure
All cloud resources are provisioned using Terraform, including:

* GCS Buckets (Source and Target)
* Dataproc Cluster
* BigQuery Datasets and Tables
* Airflow environment

### Tools and Technologies

  1. **Google Cloud Storage (GCS)**: For storing raw and processed data.
  2. **Dataproc:** For running the PySpark jobs.
  3. **PySpark:** For data transformation and cleaning.
  4. **BigQuery (BQ):** For data warehousing and analysis.
  5. **Apache Airflow:** For workflow orchestration.
  6. **Terraform:** For infrastructure as code.
