#!/usr/bin/env python
# encoding: utf-8

from flask import render_template, Blueprint, g

bp = Blueprint('account', __name__)

@bp.route('/signin')
def signin():
    return render_template("index.html")
