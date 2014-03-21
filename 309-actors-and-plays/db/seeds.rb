Actor.create! id: 1, name: "Fred"
Actor.create! id: 2, name: "Lynne"
Actor.create! id: 3, name: "Cathy"
ActiveRecord::Base.connection.reset_pk_sequence! "actors"

Play.create! id: 1, name: "Macbeth"
Play.create! id: 2, name: "Twelfth Night"
Play.create! id: 3, name: "Hamlet"
ActiveRecord::Base.connection.reset_pk_sequence! "plays"

Casting.create! actor_id: 1, play_id: 1, role: "Macbeth"
Casting.create! actor_id: 2, play_id: 1, role: "Lady Macbeth"
Casting.create! actor_id: 2, play_id: 2, role: "Viola"
ActiveRecord::Base.connection.reset_pk_sequence! "castings"
