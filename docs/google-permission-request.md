---
title: Google Permission Request
sidebar_title: Google Permission Request
permalink: /docs/google-permission-request/
---

To simplify the initial setup for WP-Stateless and your Google Cloud configuration, you are presented with the setup assistant upon the installation of WP-Stateless. This setup assistant automates the creation of your Google Cloud Project, Google Cloud Storage Bucket, and Google Cloud Billing Account. In order to do these tasks on your behalf, WP-Stateless will prompt you for access to your Google account.

If you prefer to not provide access to your Google account, [the manual setup process](https://wp-stateless.github.io/docs/manual-setup/) is available to you.

# Permissions

Below is a lineup of the permissions we request and an explanation of why we require such access.

### View and manage your data across Google Cloud Platform services

This permission allows us to view your existing Google Cloud Projects and create new projects on your behalf. This permission also allows us to create a service account on your behalf. The setup assistant allows you to select an existing project or create a new one. The setup assistant will also create a service account that authenticates your website's access to the project.

### Manage your data and permissions in Google Cloud Storage

This permission allows us to view your existing Google Cloud Storage buckets and create new buckets on your behalf. The setup assistant allows you to select an existing bucket or create a new one. This permission is used to do these actions.

### View and manage your Google Cloud Platform billing accounts

This permission allows us to view your existing Google Cloud Billing Accounts and create new billing accounts on your behalf. The setup assistant allows you to select an existing account or create a new one. This permission is used to do these actions.

# Permissions Consent Prompt

![permission request screenshot](https://ps.w.org/wp-stateless/assets/screenshot-4.png)

# Privacy Policy

Our app provides a seamless process for WordPress users of our distributed software to login and begin setting up their Google Cloud Project. During this process, we utilize our oAuth page and token to create an access token that allows the user to continue the setup the process on their WordPress website.

To be clear, once the user login process is complete we do not retain any tokens or access credentials on our service.