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


### To find your PIVOTAL_TOKEN_ID:
  1. Click your username dropdown on the top right of the screen (https://www.pivotaltracker.com/dashboard).
  2. Click 'Profile'
  3. Your API token is at the bottom of the list. Copy it for your `.env` file.

### To find your PIVOTAL_ACCOUNT_ID:
  1. Click your username dropdown on the top right of the screen (https://www.pivotaltracker.com/dashboard).
  2. Click 'Accounts'
  3. If you have already created an account, click 'MANAGE ACCOUNT'
  * Your account id is in the URL. E.g., `https://www.pivotaltracker.com/accounts/9_ACTUAL_ACCOUNT_ID_3/plans`
  4. If you don't have an account, click 'CREATE ACCOUNT' and come on back to step 3.

### To find your PROJECT_ID:
  1. Click your username dropdown on the top right of the screen (https://www.pivotaltracker.com/dashboard).
  2. Click 'Accounts'
  3. Click on one of your projects (either 'Accounts I Own' or 'Accounts I am a Member of').
  * Your project id is in the URL. E.g., `https://www.pivotaltracker.com/n/projects/1_ACTUAL_PROJECT_ID_5`
  4. If you don't have an project, click 'CREATE PROJECT' and come on back to step 3.

## Troubleshooting

Scenario: It says my environment variable are not set...
* Make sure you have set all of the environment variables (see the top of this file for more information).

Scenario: It says my project doesn't exist...
* Delete your project cassette `rm ./spec/fixtures/pivotal_tracker_cassettes/project.yml`
* Make sure your project id is for a project that exists
* If you changed your password, make sure to update `PIVOTAL_USER_PASSWORD` and `PIVOTAL_TOKEN_ID` in your `.env` file.
  * Note - if authenticating through Google, you will have to set a new Pivotal Tracker password.

Scenario: It says something else related to my pivotal tracker doesn't exist...
* If you are 100% confident in your code, the error is likely cassette related.
* Follow similar steps from the scenario above and make sure your ENV variables are up to date and accurate.

And of course, if you find something we haven't, let us know about it. Thanks!
