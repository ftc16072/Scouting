import datetime
import os
import base64
from io import BytesIO
import sqlite3
import json
import cherrypy

from mako.lookup import TemplateLookup


DB_STRING = os.path.join(os.path.dirname(__file__), 'data/database.sqlite3')

""" 
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
 """

class Scouting(object):
    
    def __init__(self):
        self.lookup = TemplateLookup(directories = ['HtmlTemplates'], default_filters=['h'])

    def dbConnect(self):
        return sqlite3.connect(DB_STRING, detect_types=sqlite3.PARSE_DECLTYPES)

    def template(self, template_name, **kwargs):
        return self.lookup.get_template(template_name).render(**kwargs)

    @cherrypy.expose
    def index(self):
        return "Hello World!"



if __name__ == "__main__":
    cherrypy.quickstart(Scouting(), config='development.conf')
