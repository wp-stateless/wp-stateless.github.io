---
title: Creating a Google Cloud Service Account
sidebar_title: Service Account
permalink: /setup/service-account/
layout: setup
---

A Service Account is a special Google account used by applications, like the WP-Stateless plugin, to access Google Cloud services. You’ll create this account and grant it the permissions it needs to manage files in your bucket.

### Step 1: Go to the Service Accounts Section and Create a New Service Account

1. Make sure you’re in the correct Google Cloud project. You can check the project name at the top of the Google Cloud Console.

2. In the **Navigation menu** <i class="fa-sharp fa-light fa-bars"></i>, go to **IAM & Admin**, then select **Service Accounts**.

3. Click **Create service account** at the top of the page.

<video autoplay loop muted playsinline width="600" class="d-block mb-4 mx-auto">
  <source src="/assets/setup/create-service-account.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>


### Step 2: Add Service Account Details

1. **Service account name**: Enter a descriptive name for your service account, such as `wp-stateless`.

2. **Service account ID**: This will be automatically generated based on the name you entered. You can use the default.

3. **Service account description**: Optionally, add a description like "Used by WP-Stateless plugin to manage media files".

4. Click **Create and continue**.

<img src="/assets/setup/service-account-details.png" alt="Bucket Access Control" class="d-block mb-4 mx-auto" width="500"/>


### Step 3: Grant Access to the Service Account

This is the critical step, where you assign the necessary permissions to your service account.

1. Under **Permissions**, you'll see a field to add a role.

2. In the **Select a role** field, search for and select **Storage Admin**. The **Storage Admin** role gives the service account full control over your Cloud Storage buckets, which the plugin requires to create, read, update, and delete files.

3. Click **Continue**.

<video autoplay loop muted playsinline width="600" class="d-block mb-4 mx-auto">
  <source src="/assets/setup/service-account-role.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

4. Click **Done** to finish creating the Service Account. You will see it listed in your Service Accounts list.

### Step 4: Create and Download the JSON Key

The plugin will use this key to authenticate with Google Cloud. Think of it as a password for your service account.

1. Click on the name of the new Service Account you just created `wp-stateless@...`.

2. Select the **Keys** tab at the top.

3. Click **Add key**, then select **Create new key**.

4. In the pop-up window, choose **JSON** as the key type and click **Create**.

5. A `.json` file will be downloaded automatically. **Save it in a safe place**, as it contains the credentials required by the plugin. You will need this file to configure the WP-Stateless plugin settings in WordPress.

<video autoplay loop muted playsinline width="600" class="d-block mb-4 mx-auto">
  <source src="/assets/setup/service-account-key.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

### Congratulations!

You’ve successfully created a service account and downloaded the JSON key. This key will be used to connect WP-Stateless to your Google Cloud bucket in the next step.

Next: [Configuring WP-Stateless Settings](/setup/wp-stateless/)
