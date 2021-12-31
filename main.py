import datetime
import os
import base64
from io import BytesIO
import sqlite3
import json
import cherrypy

from mako.lookup import TemplateLookup

import users


DB_STRING = os.path.join(os.path.dirname(__file__), 'data/database.sqlite3')

class Cookie(object):
    #Abstracts cookies so they can be in sessions
    def __init__(self, name):
        self.name = name

    def get(self, default=''):
        #Get the value of the cookie or set if doesn't exist
        if self.name in cherrypy.session:
            return cherrypy.session[self.name]
        else:
            self.set(default)
            return default

    def set(self, value):
        #Set the value of the cookie
        cherrypy.session[self.name] = value

class Scouting(object):
    
    def __init__(self):
        self.lookup = TemplateLookup(directories = ['HtmlTemplates'], default_filters=['h'])

    def dbConnect(self):
        return sqlite3.connect(DB_STRING, detect_types=sqlite3.PARSE_DECLTYPES)

    def template(self, template_name, **kwargs):
        return self.lookup.get_template(template_name).render(**kwargs)

      
    def getUser(self):
        username = Cookie('username').get()
        team = Cookie('team').get()
        if not username or not team:
            return None

    def show_loginpage(self, error=''):
        """Clear session and show login page"""
        cherrypy.session.regenerate()
        return self.template("login.mako", error=error)

    def show_mainpage(self, user, error=''):
        return self.template('index.mako')


    @cherrypy.expose
    def login(self, username, password):
        user = users.Users().getUser(username, password)
        if user:
            Cookie('username').set(user.username)
            Cookie('team').set(user.team.teamName)
            return self.show_mainpage(user)
        return self.show_loginpage('Not a valid username/password pair')

    @cherrypy.expose
    def logout(self):
        return self.show_loginpage()
    @cherrypy.expose
    def index(self):
        return self.template('index.mako')



if __name__ == "__main__":
    cherrypy.quickstart(Scouting(), config='development.conf')
