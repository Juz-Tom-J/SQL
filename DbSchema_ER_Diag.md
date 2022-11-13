AIM

Design a database schema and ER Diagram for national hockey team

REQUIREMENT

The NHL has many teams, each team has a name, a city, a wach, a captain and set of players. Each player belongs to only one team. Each player has a name, position, skill level, and a set of injury records. Team captain is also a player A game is played between two teams, has date and score 

<br>

SAMPLE DATABASE DESIGN

Team(Team- Id, Team-_name, Captain, city, coach) Team_Id is primary key

Player (Player_Id, Team. Id, player-name, position, skill_level) // Team_Id is a foreign key that references Team table

Injury Record (Player_Id, Incident-Desc, Injury- Dex) // player_Id is a foreign key that references player table.

• Game (Game_id, Host Team, Guest Team, Host Team Score, Guast Team Score Game Date)