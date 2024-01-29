# Custom Domains — Ruby on Rails

This is a dummy application to demonstrate how to add custom domains to your Ruby on Rails application.

It's a status page application that shows the current status of your customers' applications and their services.

## Prerequisites

The setups steps expect following tools installed on the system.

- Ruby [3.2.0]
- Rails [7.1.3]

## Setup

First, you need to clone the repo and install the needed gems:

```bash
$ git clone https://github.com/saascustomdomains/ruby-on-rails-custom-domains-app
$ cd ruby-on-rails-custom-domains-app
$ bundle install
```

## Database creation

```bash
$ bin/rails db:create
```

## Database initialization

The seed file contains two companies for which we serve status pages — SaasCustomDomains.com and Intercom with their status page domains, [status.saascustomdomains.com](https://status.saascustomdomains.com) and [status.intercom.com](https://status.intercom.com).

Feel free to add your own companies and domains to the seed file.

Then run:
```bash
$ bin/rails db:seed
```

## How to run
    
```bash
$ bin/rails server
```