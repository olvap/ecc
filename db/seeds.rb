# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
include FactoryGirl::Syntax::Methods


# Creating a list of teams
create_list(:team, 15)

# Creating a list of participants
create_list(:participant, 15)