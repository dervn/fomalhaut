# coding: utf-8
from ._base import db

class Article(db.Model):

    __tablename__ = 'tb_article'

    id = db.Column(db.Integer, primary_key=True)
    nickname = db.Column(db.String(64), default='')
    email = db.Column(db.String(64), default='')
    password = db.Column(db.String(64), default='')
    mobile = db.Column(db.String(64), default='')
    reg_ip = db.Column(db.String(64), default='')
    create_at = db.Column(db.Integer, default=0)
    last_login_at = db.Column(db.Integer, default=0)
    status = db.Column(db.Integer, default=0)
