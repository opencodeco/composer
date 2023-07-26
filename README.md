# OpenCodeCo Composer Repository

This is a [composer](https://getcomposer.org/) repository to speed up packages installation from OpenCodeCo.

Contains:
- Packages that needed fixes that upstream does not accept.

To use this, your `composer.json` should contain:

```json
"repositories": [
    {
        "type": "composer",
        "url": "https://composer.opencodeco.dev"
    }
]
```

You can add it with:

```shell
composer config repositories.opencodeco composer https://composer.opencodeco.dev
```

Head over to https://composer.opencodeco.dev to browse available packages.

__NOTE__: actual composer repository is on [gh-pages](https://github.com/opencodeco/composer/tree/gh-pages) branch.
