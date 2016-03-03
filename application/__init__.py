#!/usr/bin/env python
# encoding: utf-8
"""
app.py
Created by dn on 2011-12-08.
Copyright (c) 2011 shubz. All rights reserved.
"""
import sys
import os
import logging
from flask import Flask
from config import load_config
import controllers

DEFAULT_APP_NAME = ''

DEFAULT_MODULES = (
    (controllers.frontend, ""),
    (controllers.account, "/account"),
)

def create_app(config=None, modules=None):

    if modules is None:
        modules = DEFAULT_MODULES

    app = Flask(__name__)
    config = load_config()
    app.config.from_object(config)
    register_modules(app, modules)

    return app

def register_modules(app, modules):
    for module, url_prefix in modules:
        app.register_module(module, url_prefix=url_prefix)

if __name__ == "__main__":
    app.run()
