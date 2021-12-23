from flask import Flask
from sqlalchemy import create_engine
from sqlalchemy.ext.automap import automap_base
from sqlalchemy import select
from flask_login import UserMixin


Base = automap_base()
engine = create_engine('mysql+pymysql://root:lilly24@localhost:3306/fantasy_football')

class User(Base, UserMixin):
    __tablename__ = 'user_account'
    def get_id(self):
           return (self.account_username)
       
class Games(Base):
    __tablename__ = 'games'

class Fantasy_team(Base):
    __tablename__ = 'fantasy_team'
    
class Players(Base):
    __tablename__ = 'players'

Base.prepare(engine, reflect=True)
