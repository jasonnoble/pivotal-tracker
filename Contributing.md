# Contributing to the Pivotal Tracker Gem

Want to help out? Thanks for coming here first. It will save you some unnecessary headaches that we've already gone through.

To get your environment setup for contribution:

1. Prepare your environment variables for authentication in your API requests.

```
cp .env.example .env
```

2. Replace the variables in your `.env` file with your PivotalTracker credentials.

```
PIVOTAL_TOKEN_ID='98sf98_YOUR_ACTUAL_TOKEN_328asc'
PIVOTAL_EMAIL='your@email.here'
PIVOTAL_USER_NAME='yourusername'
PIVOTAL_USER_PASSWORD='yourpassword'
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
