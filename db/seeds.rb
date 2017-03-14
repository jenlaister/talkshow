ian = Guest.create(first_name: "Ian", last_name: "Candy", occupation: "Instructor")

jenny = Guest.create(first_name: "Jenny", last_name: "Lai", occupation: "Unemployed")

jon = Guest.create(first_name: "Jon", last_name: "Stewart", occupation: "Former tv host")

thedan = Episode.create(title: "My Love for Dan Abramov", date: "3/12/17")

thetacos = Episode.create(title: "Tacos are Wonderful", date: "3/10/17")

thetrevor = Episode.create(title: "Trevor, You're Trying, Try Harder...", date: "3/8/17")

thesteelers = Episode.create(title: "My Love for the Steelers", date: "3/18/17")

thenibs = Episode.create(title: "Nibs Goes on an Adventure", date: "3/6/17")

thereplacement = Episode.create(title: "So, How's it Going?", date: "3/6/17")

episode1 = Appearance.create(guest_id: 1, episode_id: 1)

episode2 = Appearance.create(guest_id: 2, episode_id: 2)

episode3 = Appearance.create(guest_id: 3, episode_id: 3)
