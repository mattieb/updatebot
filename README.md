# updatebot

updatebot is a Mastodon bot that tells you just how it is feeling every day at a set time.

## Getting started

Edit `updatebot.ini` as needed. The most important thing to change is your `api_base_url`, unless you're also using [botsin.space](https://botsin.space/).

You'll probably also want to set a `client_name` to identify your bot.

Run `register` to register the client, then `login` to log in using your bot's credentials.

Configuration for 

## Running the bot

updatebot doesn't schedule itself. Instead, you can set it up in your crontab.

I have updatebot running in its own Python [venv](https://docs.python.org/3/library/venv.html), so my crontab line looks like this:

```
0 * * * *	$HOME/src/updatebot/bin/python $HOME/src/updatebot/updatebot
```

## Inspiration

updatebot was inspired by [BiBot](https://twitter.com/biupdatebot), but is a brand-new implementation by me, since I couldn't get in touch with whoever created it.

