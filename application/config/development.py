# coding: utf-8

from .default import Config

class DevelopmentConfig(Config):
    DEBUG = True
    # Db config
    SQLALCHEMY_DATABASE_URI = "mysql://root:123@localhost/yys"
