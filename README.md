# Sebes Digital Interact gem

This is an interface for doctl, which helps to automate interactions with Digital Ocean in `staging` and `production` envs.

## Set up system

- Instal `doctl` https://docs.digitalocean.com/reference/doctl/how-to/install/
- Please follow the instruaction to generate the token https://docs.digitalocean.com/reference/api/create-personal-access-token/#:~:text=To%20use%20the%20DigitalOcean%20API,Authorization%20header%20with%20your%20request.&text=Keep%20your%20tokens%20secret.
  - You have to grant `full access`
- Then `doctl auth init --context "name-of-the-token"
- Don't forget to check that you are using correct context `doctl auth list`

## Install into the project
Add to Gemfile:
```
group: %i[development test] do
  gem "digital_interact", require: false, git: "https://github.com/sebestech/gem-digital-interact.git"
end
```

## Envs

Please set up in the project envs in `.env.digital`:
```
PRODUCTION_APP_ID=65c01e62-1882-49f9-878e-890a02af495d
PRODUCTION_WEB_NAME=huchob

STAGING_APP_ID=8378e7d2-5599-48cc-be97-d8b64039d46f
STAGING_WEB_NAME=huchob-staging

PRE_PROD_APP_ID=36d0e2c1-8234-4b92-b378-26200024de5f
PRE_PROD_WEB_NAME=huchob-pre-prod

CUSTOM_APP_ID=d53eea18-72ce-4d8a-bb8f-df02c948f8b2
CUSTOM_WEB_NAME=custom-web-name
```


## Accessing Digital Ocean token

To use this gem you have to gain a token and install `doctl`:

https://docs.digitalocean.com/reference/doctl/how-to/install/


## Usage

Access Digital Ocean doctl commands. The production environment (`-p`) is used by default if no environment flag is specified.

### Logs
```bash
# Production (default)
bundle exec digital logs (-f|--tail n)

# Explicit production
bundle exec digital -p logs (-f|--tail n)

# pre-prod
bundle exec digital -pre logs (-f|--tail n)

# Staging
bundle exec digital -s logs (-f|--tail n)
```

### Stub bin

```bash
bundle binstub digital_interact
```

### Access Platform App console
```bash
# Production (default)
bundle exec digital console

# pre-prod
bundle exec digital -pre console

# Staging
bundle exec digital -s console
```

### Get last 5 deployments' statuses
```bash
# Production (default)
bundle exec digital status

# pre-prod
bundle exec digital -pre status

# Staging
bundle exec digital -s status
```

### Get App Spec
```bash
# Production (default)
bundle exec digital spec

# pre-prod
bundle exec digital -pre spec

# Staging
bundle exec digital -s spec
```
