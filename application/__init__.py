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

def create_app(config=None, modules=None):
    app = Flask(__name__)
    config = load_config()
    app.config.from_object(config)

    register_db(app)
    register_routes(app)
    register_jinja(app)
    register_logger(app)
    #register_error_handle(app)

    return app

def register_jinja(app):
    pass

def register_logger(app):
    '''Send error log to admin by smtp'''
    pass

def register_db(app):
    from .models import db
    db.init_app(app)

def register_routes(app):
    '''Register routes'''
    from . import controllers
    from flask.blueprints import Blueprint
    for module in _import_submodules_from_package(controllers):
        bp = getattr(module, 'bp')
        if bp and isinstance(bp, Blueprint):
            app.register_blueprint(bp)

def _import_submodules_from_package(package):
    import pkgutil
    modules = []
    for importer, modname, ispkg in pkgutil.iter_modules(package.__path__, prefix=package.__name__ + "."):
        modules.append(__import__(modname, fromlist="dummy"))
    return modules
