from flask import Flask
from sqlalchemy.ext import automap
from os import path
from flask_login import LoginManager
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

engine = create_engine('mysql+pymysql://root:lilly24@localhost:3306/fantasy_football')
Session = sessionmaker(bind = engine)
session = Session()

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'secrettunnel'
    
    from .views import views
    from .auth import auth

    app.register_blueprint(views, url_prefix='/')
    app.register_blueprint(auth, url_prefix='/')

    from .models import User

    login_manager = LoginManager()
    login_manager.login_view = 'auth.login'
    login_manager.init_app(app)

    @login_manager.user_loader
    def load_user(id):
        return session.query(User).get(id)

    return app
