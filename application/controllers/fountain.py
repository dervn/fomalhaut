#!/usr/bin/env python
# encoding: utf-8

from flask import render_template, Blueprint, g

from ..models import db, Fountain

bp = Blueprint('fountain', __name__)

@bp.route('/fountain')
def index():
    data = Fountain.query.order_by(db.func.random()).first()
    return render_template("fountain/index.html", data=data)
