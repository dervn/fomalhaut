# coding: utf-8
import os

from flask.ext.script import Manager
from application import create_app

#Used by app debug
PORT = 5000

app = create_app()
manage = Manager(app)

@manage.command
def run():
    """启动app"""
    app.run(debug=True, port=PORT)

if __name__ == '__main__':
    manage.run()
