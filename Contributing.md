# Contributing to the Pivotal Tracker Gem

Want to help out? Thanks for coming here first. It will save you some unnecessary headaches that we've already gone through.

To get your environment setup for contribution:

1. Prepare your environment variables for authentication in your API requests.

```
cp .env.example .env
```

2. Replace the variables in your `.env` file with your PivotalTracker credentials.

```
PIVOTAL_TOKEN_ID="98sf98_YOUR_ACTUAL_TOKEN_328asc"
PIVOTAL_EMAIL="your@email.here"
PIVOTAL_USER_NAME="yourusername"
PIVOTAL_USER_PASSWORD="yourpassword"
PROJECT_ID="1_YOUR_PROJECT_ID_3"
PIVOTAL_ACCOUNT_ID="12_YOUR_ACCOUNT_ID_95"
```

3. Create a Pivotal Tracker project and modify your .env file to have the project ID

```
PIVOTAL_PROJECT_ID='9_YOUR_PROJECT_ID_2'
```

4. Make sure your `.env` file is added to your [global gitignore file](https://help.github.com/articles/ignoring-files/#create-a-global-gitignore)


### To find your API token:
   1. Click your username dropdown on the top right of the screen (https://www.pivotaltracker.com/dashboard).
   2. Click 'Profile'
   3. Your API token is at the bottom of the list. Copy it for your `.env` file.

## Troubleshooting

Scenario: It says my project doesn't exist...
* Delete your project cassette `rm ./spec/fixtures/pivotal_tracker_cassettes/project.yml`
* Make sure your project id is for a project that exists
* If you changed your password, make sure to update `PIVOTAL_USER_PASSWORD` and `PIVOTAL_TOKEN_ID` in your `.env` file.
  * Note - if authenticating through Google, you will have to set a new Pivotal Tracker password.

Scenario: It says something else related to my pivotal tracker doesn't exist...
* If you are 100% confident in your code, the error is likely cassette related.
* Follow similar steps from the scenario above and make sure your ENV variables are up to date and accurate.

And of course, if you find something we haven't, let us know about it. Thanks!
