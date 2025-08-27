---
title: Configure WP-Stateless Settings
sidebar_title: WP-Stateless Settings
permalink: /setup/wp-stateless/
layout: setup
---

Now we will configure WP-Stateless settings so it can use Google Cloud Storage to store your media files.

### Step 1: Update WP-Stateless settings

1. In WordPress Admin, go to **Media**, **Stateless Settings**.

2. Fill in the following required fields:

* **Mode**: Select the mode WP-Stateless should use to handle your media. Each option has a brief description to help you choose the best one for your needs.
* **Bucket**: Insert the bucket name you created in the [Step 3](/setup/bucket/).
* **Service Account JSON**: You will need to get the contents of the key file you downloaded in [Step 4](/setup/service-account/). Open the `.json` file in a text editor (e.g., Notepad or TextEdit), copy its entire content, and paste it into this field.

3. Click **Save Changes** at the bottom of the page.

<video autoplay loop muted playsinline width="100%" class="d-block mb-4 mx-auto">
  <source src="/assets/setup/wp-stateless.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

### Step 2: (Optional) Upload something via the Media Library

This quick test ensures WP-Stateless is handling your media correctly.

1. In WordPress Admin, go to **Media**, **Library**.

2. Upload something, like an image.

3. If you set the WP-Stateless mode to `CDN`, `Ephemeral` or `Stateless`, you should see the media file's URL referencing Google Cloud Storage (`storage.googleapis.com`).

<video autoplay loop muted playsinline width="100%" class="d-block mb-4 mx-auto">
  <source src="/assets/setup/upload-media.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

### Step 3: (Optional) Check the Google Cloud Storage Bucket

This is another quick test to ensure everything is working correctly before you start using WP-Stateless fully.

1. Go to the <a href="https://console.cloud.google.com/storage/browser" target="_blank">Google Cloud Storage Browser <i class="fa-sharp fa-solid fa-arrow-up-right-from-square"></i></a>.

2. Open the bucket you created in [Step 3](/setup/bucket/).

3. You’ll see the media files you uploaded in the Media Library, including the original file and other image sizes.

<video autoplay loop muted playsinline width="100%" class="d-block mb-4 mx-auto">
  <source src="/assets/setup/bucket-check.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

### Congratulations!

You’ve successfully completed the WP-Stateless setup. Your WordPress site is now connected to Google Cloud Storage, and your media is ready to be served efficiently and reliably. Happy blogging!

