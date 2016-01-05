#!/usr/bin/env python
# encoding: utf-8
"""
frontend.py
Created by dn on 2011-12-08.
Copyright (c) 2011 shubz. All rights reserved.
"""
from flask import Module, Response, request, flash, jsonify, g, current_app,\
    abort, redirect, url_for, session, render_template

frontend = Module(__name__)

@frontend.route("/", methods=("GET","POST"))
def index():
    return render_template("index.html")