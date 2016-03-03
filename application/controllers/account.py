#!/usr/bin/env python
# encoding: utf-8
"""
account.py
Created by dn on 2011-12-08.
Copyright (c) 2011 shubz. All rights reserved.
"""
from flask import Module, Response, request, flash, jsonify, g, current_app,\
    abort, redirect, url_for, session,render_template

account = Module(__name__)

@account.route("/signin", methods=("GET","POST"))
def signin():
    return render_template("index.html")