# coding: utf-8

from .default import Config

class DevelopmentConfig(Config):
    DEBUG = True
    # Db config
    SQLALCHEMY_DATABASE_URI = "mysql://root:12345678@localhost/fomalhaut"
