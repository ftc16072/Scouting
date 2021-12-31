import re
import sqlite3
import os

def make_safe_name(input):
    return re.sub(r'\W+', '', input)


class Team(object):
    def __init__(self, teamNum):
        self.teamNum = teamNum
        self.teamName = ""
        

class Teams(object):
    def __init__(self):
        self.teams = {}

    def getTeam(self, teamNum):
        try:
            return self.teams[teamNum]
        except KeyError:
            self.teams[teamNum] = Team(teamNum)
            return self.teams[teamNum]


teams = Teams()