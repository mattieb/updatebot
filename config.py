import configparser
import os

def get_config_pathname():
    dirname = os.path.dirname(os.path.realpath(__file__))
    return os.path.join(dirname, 'updatebot.ini')

def read_config():
    config = configparser.ConfigParser()
    config.read(get_config_pathname())
    return config

