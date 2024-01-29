# Custom Domains — Ruby on Rails

This is an example application to demonstrate how to add custom domains to your Ruby on Rails application using [SaasCustomDomains.com](https://saascustomdomains.com).

It's a status page application that shows the current status of your customers' applications and their services.

## Prerequisites

The setups steps expect following tools installed on the system.

- Ruby [3.2.0]
- Rails [7.1.3]

## Setup

First, you need to clone the repo and install the needed gems:

```bash
git clone https://github.com/saascustomdomains/ruby-on-rails-custom-domains-app
cd ruby-on-rails-custom-domains-app
bundle install
```

## Database creation

```bash
bin/rails db:create
```

## Database initialization

The seed file contains two companies for which we serve status pages — SaaS Custom Domains and Intercom with their status page domains, [status.saascustomdomains.com](https://status.saascustomdomains.com) and [status.intercom.com](https://status.intercom.com).

You can add your own company and the domain in the seed file or via Rails console to test the functionality.

Then run:
```bash
bin/rails db:seed
```

## How to run
    
```bash
bin/rails server
```

Visit your app at http://localhost:3000. You should see the default status page which is the dummy status page of [SaasCustomDomains.com](https://saascustomdomains.com) showing a chart of random numbers.

## How to test in production

You may want to add your own domain to test the functionality. Once you've deployed the app to your favourite hosting, you can do that by following the steps below.

### Steps
1. Add your company via Rails console: `Company.create(name: 'Your Company', domain: 'status.yourdomain.com')`
2. Create your upstream in the [SaasCustomDomains.com](https://saascustomdomains.com) dashboard or via [API](https://docs.saascustomdomains.com/). 
   1. This is the URL where you deployed this status page application, e.g. `test-statuspage.onrender.com` or `test-statuspage.herokuapp.com` etc.
3. Create your custom domain (`status.yourdomain.com`) in the [SaasCustomDomains.com](https://saascustomdomains.com) dashboard or via [API](https://docs.saascustomdomains.com/)
4. Add a CNAME record for `status.yourdomain.com` pointing to `in.saascustomdomains.com`

That's it! Visit `status.yourdomain.com` and you should see the status page of your company.