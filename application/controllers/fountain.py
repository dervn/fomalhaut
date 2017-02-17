#!/usr/bin/env python
# encoding: utf-8

from flask import render_template, Blueprint, g

bp = Blueprint('site', __name__)

@bp.route('/')
def index():
    return render_template("index.html")
