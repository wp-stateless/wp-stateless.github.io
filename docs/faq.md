---
title: FAQ
sidebar_title: FAQ
permalink: /docs/faq/
---

## Installation Instructions

1.  Search, install, and activate the WP-Stateless plugin via your WordPress dashboard.
2.  Begin WP-Stateless setup assistant at Media > Stateless Setup and click “Get Started Now.”
3.  Click “Google Login” and sign-in with your Google account.
4.  Set a Google Cloud Project, Google Cloud Storage Bucket, and Google Cloud Billing Account and click “Continue.”
5.  Installation and setup is now complete. Visit Media > Stateless Settings for more options.

## What wp-config constants are supported?

For a complete list of supported wp-config constants, please consult the [GitHub wiki](https://wp-stateless.github.io/docs/constants/).

## How do I manually generate the Service Account JSON?

The WP-Stateless setup assistant will create the Service Account JSON automatically for you, but you can follow these steps if you choose to create it manually.

1.  Visit Google Cloud Console, and go to _IAM & Admin > Service accounts_.
2.  Click Create Service Account and name it _wp-stateless_.
3.  Set the role to _Storage > Storage Admin_.
4.  Check _Furnish a new private key_ and select _JSON_ as the key type.
5.  Open the JSON file and copy the contents into the _Service Account JSON_ textarea within the WP-Stateless settings panel.

## Where can I submit feature requests or bug reports?

We encourage community feedback and discussion through issues on the [GitHub repository](https://github.com/udx/wp-stateless/issues).

## Can I test new features before they are released?

To ensure new releases cause as little disruption as possible, we rely on a number of early adopters who assist us by testing out new features before they are released. [Please contact us](https://udx.io) if you are interested in becoming an early adopter.

## Who maintains this plugin?

[UDX](https://udx.io/) maintains this plugin by continuing development through it’s own staff, reviewing pull requests, testing, and steering the overall release schedule. UDX is located in Durham, North Carolina and provides WordPress engineering and hosting services to clients throughout the United States.
