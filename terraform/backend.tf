terraform {
    backend "gcs" {
        bucket = "db-data-417907-tf-state"
        prefix = "mainak/backend"
    }
}