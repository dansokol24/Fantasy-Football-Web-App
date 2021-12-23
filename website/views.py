from flask import Blueprint, render_template, request, flash, jsonify
from flask_login import login_required, current_user
from .models import User
from .models import Players
from .models import Fantasy_team
from .models import Games
from . import session

views = Blueprint('views', __name__)

@views.route('/', methods=['GET', 'POST'])
@login_required
def home():
    if request.method == 'POST':
        c_user = session.query(Fantasy_team).filter_by(owner_name = current_user.account_username).first()
        name_to_drop = request.form.get('dropped_player')
        name_to_add = request.form.get('added_player')
        name_change = request.form.get('new_name')
        
        if name_to_drop:
            dropped_player = session.query(Players).filter_by(player_name=name_to_drop).first()
            if dropped_player:
                if dropped_player.player_team == c_user.team_name:
                    new_player = Players(player_name = dropped_player.player_name, player_rank = dropped_player.player_rank, player_team = 'free_agent', player_status = dropped_player.player_status, player_position = dropped_player.player_position)
                    session.delete(dropped_player)
                    session.commit()
                    session.add(new_player)
                    session.commit()
                    flash('Player Dropped', category = 'success')
                else:
                    flash('You do not own this player', category='error')
            else: 
                flash('This player name is not valid', category='error')
                
        elif name_to_add:
            added_player = session.query(Players).filter_by(player_name=name_to_add).first()
            if added_player:
                if added_player.player_team == 'free_agent':
                    new_player = Players(player_name = added_player.player_name, player_rank = added_player.player_rank, player_team = c_user.team_name, player_status = added_player.player_status, player_position = added_player.player_position)
                    session.delete(added_player)
                    session.commit()
                    session.add(new_player)
                    session.commit()
                    flash('Player Added', category = 'success')
                else:
                    flash('This player is not a free agent', category='error')
            else: 
                flash('This player name is not valid', category='error')
            
            
    players = session.query(Players).all()
    teams = session.query(Fantasy_team).all()
    games = session.query(Games).all()
    return render_template("home.html", user=current_user, players = players, teams = teams, games = games)
