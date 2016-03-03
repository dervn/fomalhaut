#!/usr/bin/env python
# encoding: utf-8
"""
account.py
Created by dn on 2011-12-08.
Copyright (c) 2011 shubz. All rights reserved.
"""
from flask import render_template, Blueprint, g

bp = Blueprint('account', __name__)

@bp.route('/signin')
def signin():
    return render_template("index.html")
