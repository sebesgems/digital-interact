# Sebes Digital Interact gem

This is an interface for doctl, which helps to automate interactions with Digital Ocean in `staging` and `production` envs.

## Install into the project
Add to Gemfile:
```
gem "sebes_digital_interact", group: %i[development test], git: "https://github.com/sebestech/gem-digital-interact.git"
```
You have to add both locally and to the DigitalOcean server env:
```
BUNDLE_GITHUB__COM= -> LastPass -> Shared-dev -> SEBES_GEM_TOKEN
```
To `.github/workflow/ci.yml` should be added:
```
jobs:
  lint:
    env:
      BUNDLE_GITHUB__COM: x-access-token:${{ secrets.SEBES_GEM_TOKEN }}
```

## Envs

Please set up in the project envs in `.env.digital`:
```
PRODUCTION_APP_ID=65c01e62-1882-49f9-878e-890a02af495d
PRODUCTION_WEB_NAME=huchob

STAGING_APP_ID=8378e7d2-5599-48cc-be97-d8b64039d46f
STAGING_WEB_NAME=huchob-staging
```


## Accessing Digital Ocean token

To use this gem you have to gain a token and install `doctl`:

https://docs.digitalocean.com/reference/doctl/how-to/install/


## Usage

Access Digital Ocean doctl commands 

```
 bundle exec digital -s log -f

```

```
 bundle exec digital -s console
```


```
 bundle exec digital -s status
```
