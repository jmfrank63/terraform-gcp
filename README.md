# terraform-gcp
Deploying Resources to GCP with Terraform course

## Updated instructions for the google cloud sandbox

- Log into the google cloud sandbox via an incognito window (right click on the open sandbox icon and choose open in incognito window)
- From the GCP hamburger menu on the top left choose IAM & Admin -> Service Account
- You will see two service accounts one cli and on developer.gserviceaccount.com
- Choose the latter and create a key
- Choose the 3 dots hamburger menu and go to manage keys
- Click add-key and choose JSON as type. Then create.
- Move the downloaded key to your terraform directory.
- Create a bucket: Go to Cloud Storage -> Browser
- Click Create Bucket and choose a unique name for the Bucket
- I like to call the bucket `terraform-<project-name>`
- Create a folder inside the bucket, I stuck to the course name `terraform1`
- 
