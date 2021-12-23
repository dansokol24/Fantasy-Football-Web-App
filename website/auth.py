from flask import Blueprint, render_template, request, flash, redirect, url_for
from .models import User
from .models import Fantasy_team
from .models import Games
from . import session
from flask_login import login_user, login_required, logout_user, current_user

auth = Blueprint('auth', __name__)

@auth.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        entered_email = request.form.get('email')
        password = request.form.get('password')
        user = session.query(User).filter_by(email=entered_email).first()
        if user:
            if user.account_password == password:
                flash('Logged in successfully!', category='success')
                login_user(user, remember=True)
                return redirect(url_for('views.home'))
            else:
                flash('Incorrect password, try again.', category='error')
        else:
            flash('Email does not exist.', category='error')

    return render_template("login.html", user=current_user)


@auth.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('auth.login'))


@auth.route('/sign-up', methods=['GET', 'POST'])
def sign_up():
    if request.method == 'POST':
        e_email = request.form.get('email')
        e_first_name = request.form.get('firstName')
        e_username = request.form.get('firstName')
        e_team_name = request.form.get('team_name')
        password1 = request.form.get('password1')
        password2 = request.form.get('password2')

        user = session.query(User).filter_by(email=e_email).first()
        username_test = session.query(User).filter_by(account_username=e_username).first()
        team = session.query(Fantasy_team).filter_by(team_name=e_team_name).first()
        if user:
            flash('Email already exists.', category='error')
        elif team:
            flash('Team name already exists.', category='error')
        elif username_test: 
            flash('Username already exists.', category='error')
        elif len(e_email) < 4:
            flash('Email must be greater than 3 characters.', category='error')
        elif len(e_first_name) < 2:
            flash('First name must be greater than 1 character.', category='error')
        elif password1 != password2:
            flash('Passwords don\'t match.', category='error')
        elif len(password1) < 7:
            flash('Password must be at least 7 characters.', category='error')
        else:
            new_user = User(email=e_email, account_username = e_username, first_name=e_first_name, account_password= password1)
            session.add(new_user)
            session.commit()
            login_user(new_user, remember=True)
            new_team = Fantasy_team(team_name = e_team_name, team_record = '0-0', owner_name = e_username)
            session.add(new_team)
            session.commit()
            
            flash('Account created!', category='success')
            return redirect(url_for('views.home'))

    return render_template("sign_up.html", user=current_user)