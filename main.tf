// create bucket first

resource "google_storage_bucket" "storage_bucket1" {
  name          = "shivanshu-remote-bucket1"
  location      = "us-west1"
  project     = "project-for-testing-424407"
 
}

// display bucket info in terminal

output "name_of_bucket" {
  value = google_storage_bucket.storage_bucket1
}


// using backend will store state file remotely
# terraform {
#   backend "gcs" {
#     bucket = "shivanshu-remote-bucket1"
#   }
# }