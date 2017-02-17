# coding: utf-8
import datetime
from ._base import db

class Fountain(db.Model):

    __tablename__ = 'tb_fountain'

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(32), default='')
    description = db.Column(db.String(256), default='')
    type = db.Column(db.Integer, default=0)
    out_id = db.Column(db.Integer, default=0)
    created_at = db.Column(db.Integer, default=0)
