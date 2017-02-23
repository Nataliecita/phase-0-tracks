bball_team = {
  boys: {
    jv: {
      team_info: {
        guards: 4,
        forwards: 3,
        centers: 2 
      },
      seniors: [
        "Bobby",
        "John",
        "Weezy"
      ]
    },
    varsity:{
       team_info: {
        guards: 4,
        forwards: 3,
        centers: 2 
      },
        seniors: [
        "Xavier",
        "Michael"]
    } 
  },
  girls: {
    jv:{
       team_info: {
        guards: 5,
        forwards: 4,
        centers: 1 
      },
      seniors:[]
    },
    varsity:{
       team_info: {
        guards: 6,
        forwards: 3,
        centers: 3 
      },
      seniors: [
        "sarah",
        "Maheen",
        "Felicia"]
    }
  }
}


# show access to different elements

# access the # of forwards for the boys varsity team
bball_team[:boys][:varsity][:team_info][:forwards]

# michael (Michael Jordan), was cut from the boys varsity team (in real life, this happened when he was a sophomore)
bball_team[:boys][:varsity][:seniors].delete("Michael")

# p bball_team[:boys][:varsity][:seniors]

# capitalize sarah's name, she is a senior on the varsity girls team. 
 bball_team[:girls][:varsity][:seniors][0].capitalize

# how many players are there on the boys jv team?
num_players_boys_jv = bball_team[:boys][:varsity][:team_info][:guards] + bball_team[:boys][:varsity][:team_info][:forwards] + bball_team[:boys][:varsity][:team_info][:centers]

num_players_boys_jv

# the seniors from the JV boys team got moved up to the boys varsity team

