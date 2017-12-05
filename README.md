# updatebot

updatebot is a Mastodon bot that tells you just how it is feeling every day at a set time.

## Getting started

Edit the `client` section in `updatebot.ini` to set up your bot as a Mastodon client.

The most important thing to change is your `api_base_url`, unless you're also using [botsin.space](https://botsin.space/).

You'll probably also want to set a `client_name` to identify your bot.

The first time you run your update bot, if it doesn't have the necessary keys, it will register and prompt you for your bot's login details.

## Configuration

Configuration for how the bot toots is in the `updates` section of `updatebot.ini`.

`adjectives` specifies where the `adjectives.txt` file is, which contains all the possible adjectives the bot can use.

`morning_hour`, `evening_hour` and `timezone` specifies what hour the bot will toot on. I invoke updatebot every hour because my server is in UTC; the bot then figures out if it's 8 a.m. or 8 p.m. in Detroit or not to decide whether to toot.

`morning_preambles_file` and `evening_preambles_file` are the preambles that will be randomly picked-from depending on whether it's the morning hour or the evening hour.

`feeling` is how the bot feels.

## Running the bot

updatebot doesn't schedule itself. Instead, you can set it up in your crontab.

I have updatebot running in its own Python [venv](https://docs.python.org/3/library/venv.html), so my crontab line looks like this:

```
0 * * * *       cd $HOME/src/updatebot && ./bin/python updatebot ./updatebot.ini
```

## Inspiration

updatebot was inspired by [BiBot](https://twitter.com/biupdatebot), but is a brand-new implementation by me, since I couldn't get in touch with whoever created it. My [bi update bot](https://botsin.space/@biupdatebot) runs on this codebase.
