# stateless.udx.io

Built with [Jekyll](https://jekyllrb.com/) for deploying to [GitHub Pages](https://docs.github.com/en/pages) 

Required Tools:

* [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
* [Bundler](https://bundler.io/)
* [Jekyll](https://jekyllrb.com/)

Templating language - [Liquid](https://shopify.github.io/liquid/)

## Local development

* Install the required tools
* Download the repository
* In the repository root run `bundle install`
* For local preview run `bundle exec jekyll serve` or `./bin/serve`

## Addons list

Addons list is kept in `_data/addons.yml` file in the following format:
- `slug` - URL path under `https://stateless.udx.io/addons/...`
- `name` - original plugin name
- `icon` - icon to display *(optional, default WP-Stateless icon)*
- `repo` - GitHub repo name *(optional, used to get the default README.md and for GitHub link)*
- `branch` - actual repo branch *(optional, default `latest`)*
- `wp` - link to addon page on WordPress plugin directory *(optional)*
- `is_theme` - should be set to `true` for theme addons *(optional)*
- `button` - HubSpot Download button code

Addons pages are generated based on the addons config. To generate/update addon page run:
```
./bin/grab-addon.sh [SLUG]
```
This script will grab `README.md` from the repository in config and use it as addon page.

The following command will update addon pages for all addons:
```
./bin/grab-all-addons.sh
```

Addon page can be also updated using `Update Addon Page` GitHub action. Same way `Update All Addon Paged` action will update all Addon pages.

### Constants

We use [Constants Wiki](https://github.com/udx/wp-stateless/wiki/Constants) as the source of the [Constants](https://stateless.udx.io/docs/constants/) page. To update constants page run:
```
./bin/grab-constants.sh
```
This script will grab `Constants.md` from the repository's wiki and use it as `Constants` page.

Constants page can be also updated using `Update Constants` GitHub action.

### Changelog

We use [Changelog](https://github.com/udx/wp-stateless/blob/latest/changes.md) as the source for the [Release Notes](https://stateless.udx.io/docs/changelog/) page. To get updates run:
```
./bin/grab-changelog.sh
```
Alternatively, use `Update Release Notes` GitHub action.
