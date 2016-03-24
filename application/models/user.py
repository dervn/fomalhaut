# coding: utf-8
import datetime
from ._base import db

class User(db.Model):

    __tablename__ = 'tb_users'

    id = db.Column(db.Integer, primary_key=True)
    nickname = db.Column(db.String(64), default='')
