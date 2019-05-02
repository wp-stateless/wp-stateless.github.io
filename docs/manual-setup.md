---
title: Manual Setup
sidebar_title: Manual Setup
permalink: /docs/manual-setup/
---

The WP-Stateless setup assistant will walk you through the process of creating a Google Cloud project, bucket, service account, and associated billing account. If you prefer to handle these manually, simply follow these instructions.

# Setup Process
1. Create Google Cloud Billing Account
2. Create Google Cloud Project
3. Create Google Cloud Bucket
4. Create Google Cloud Service Account
5. Configure WP-Stateless Settings

## 1. Create Google Cloud Billing Account

Every Google Cloud project needs an associated billing account, and it can be helpful to have this billing account in place before creating your project. Simply visit https://console.cloud.google.com/billing/create and follow the instructions.

If you are new to Google Cloud, you will be presented with a [$300 credit](https://cloud.google.com/free/) to spend over the next 12 months.

## 2. Create Google Cloud Project

With a billing account in place, visit the [Google Cloud Console](https://console.cloud.google.com/projectcreate) and create a project you want to be associated with the website you are working on.

## 3. Create Google Cloud Bucket

1. From within your project, visit *Storage > [Browser](https://console.cloud.google.com/storage/browser)* and click *[Create Bucket](https://console.cloud.google.com/storage/create-bucket)*.
2. Go to the Permissions tab for the bucket and enable Object-level permissions.
3. Make the bucket data available publicly by following these steps: *[Make Data Public](https://cloud.google.com/storage/docs/access-control/making-data-public)*.

## 4. Create Google Cloud Service Account

1. From within your project,  *IAM & Admin > [Service accounts](https://console.cloud.google.com/iam-admin/serviceaccounts/project)*.
2. Click *Create Service Account* and name it *wp-stateless*.
3. Check *Furnish a new private key* and select *JSON* as the key type.
4. Return to *Storage > [Browser](https://console.cloud.google.com/storage/browser)*, and Go to the Permissions tab for the bucket
5. Click on "Add members" and type "wp-stateless" in Input field. GCP will autocomplete this name with full IAM email. Select this email. In dropdown "Select a role", select "Storage Admin". Click on "Save".

## 5. Configure WP-Stateless Settings

From the WP-Stateless settings panel, the basic settings you should concern yourself with to get started are: *Mode*, *Bucket*, and *Service Account JSON*.

1. Mode - select the desired mode to enable WP-Stateless.
2. Bucket - insert the name of the bucket you created in Step 3.
3. Service Account JSON - open the JSON file you obtained in Step 4 and copy the contents into this textarea.

Click *Save Changes* and upload something via the Media Library. If you set the WP-Stateless mode to *CDN* or *Stateless*, you should see the media's file URL referencing Google Cloud Storage (*storage.googleapis.com*).