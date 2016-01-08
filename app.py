#!/usr/bin/env python
# encoding: utf-8
"""
app.py
Created by dn on 2011-12-08.
Copyright (c) 2011 shubz. All rights reserved.
"""
from flask import Flask
import views

DEFAULT_APP_NAME = ''

DEFAULT_MODULES = (
    (views.frontend, ""),
    (views.account, "/account"),
)

def start_app(config=None, modules=None):

    if modules is None:
        modules = DEFAULT_MODULES

    app = Flask(__name__)

    app.config.from_pyfile(config)
    register_modules(app, modules)

    return app

def register_modules(app, modules):
    for module, url_prefix in modules:
        app.register_module(module, url_prefix=url_prefix)

if __name__ == "__main__":
    app = start_app('config.cfg')
    app.run()