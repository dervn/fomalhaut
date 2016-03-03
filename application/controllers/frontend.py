#!/usr/bin/env python
# encoding: utf-8
"""
frontend.py
Created by dn on 2011-12-08.
Copyright (c) 2011 shubz. All rights reserved.
"""
from flask import render_template, Blueprint, g

bp = Blueprint('site', __name__)

@bp.route('/')
def index():
    return render_template("index.html")
