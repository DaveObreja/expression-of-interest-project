# Synopsis
An application that can record down any inputted details from a person.
These details will revolve around them being interested in a company.
This web application can be hosted locally or on a web platform.

# Setup
## Requirements
It is assumed that you have already went through setting up your hosting envrionment for the following packages:
- Windows OS
- WSL2 (Ubuntu 24.04.2 LTS)
- ASDF
- Node
- Ruby 3.3.3
- Rails 7.1.5.1
- Git
- A web browser for accessing the application (Google Chrome)

If you have not, this step-by-step guide might help: https://gorails.com/setup/windows/11

## Step by step
This guide will help you setup this application on a local machine. This assumes you are currently using WSL:
1. Using github, `git pull` this repository.
2. In the terminal, run the following commands at the root of the project in the specified order:
  - `systemctl start postgres`
  - `bundle`
  - `npm install`
  - `yarn install`
  - `rails db:create`
  - `rails db:migrate`
  - `rails db:setup`
  - `./bin/dev`
3. Access the application at `localhost:3000` (Or whichever port you are hosting the application on the loopback address)
4. Done!

## Validate integrity
Run `rails test` to validate that the environment has successfully initialized.

# Using the application
## For the customer
Ensure the url of your web browser is set to `localhost:3000`.
From there on (with supervision), feel free to let the client use it as they wish.
Preferably do this in an incognito tab to keep your session and the customers seperate.

## For the Sales Team
You can access all the inputted information into the local database here: http://localhost:3000/user_interest_submissions/
You WILL be prompted with a username and password.
The default credentials can be found under `app/controllers/user_interest_submissions_controller.rb` line 5.
It is **strongly** recommended that you change these at your earliest convenience, or you consult with the corresponding technician on these credentials.
It is also recommended that you keep your sales session and the customer session seperate to prevent any unexpected easy acess to this panel, preferably through incognito tabs on your web browser.

# Support
Please message the repository owner for any queries regarding setting up the application.
For the video tutorial, please consult with your technician or supervisor for it.


# Packages used
- [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails)
- [solargraph-rails](https://github.com/iftheshoefritz/solargraph-rails)
- [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug)
- [uk_phone_numbers](https://github.com/gocardless/uk_phone_numbers)
- [bootstrap](https://getbootstrap.com/)
- [hotwire](https://hotwired.dev/)


# License
MIT
*Note: This application was made as part of an examination. Feel free to use any parts as you may like.*
