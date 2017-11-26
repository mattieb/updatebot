#!/usr/bin/env python

import configparser
import getpass
import mastodon

from config import read_config

config = read_config()
client_config = config['client']

email = input('Email: ')
password = getpass.getpass('Password: ')

client = mastodon.Mastodon(client_id=client_config['clientcred_file'],
        api_base_url=client_config['api_base_url'])

client.log_in(email, password, to_file=client_config['usercred_file'])

