# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

delta = User.create(name:'Delta')
cvs = User.create(name:'CVS')
james = User.create(name:'James')
sally = User.create(name:'Sally')
tom_brady = User.create(name:'Tom Brady')
usa_government = User.create(name:'usa')
online_betting = User.create(name:'online_betting')
q = User.create(name: 'q')

# in UI cvs create Defintion
cvsCovidVac = BitzDef.create(user_id:cvs.id, name:'covid-19 vaccine')

# in UI cvs Issue it to users
Bitz.create(user_id: james.id, issuer_id:cvs.id, bitz_def_id: cvsCovidVac.id)
Bitz.create(user_id: sally.id, issuer_id:cvs.id, bitz_def_id: cvsCovidVac.id)

# in UI cvs create Defintion
jamesThinksYouCool = BitzDef.create(user_id:james.id, name:'You cool')

Bitz.create(user_id: sally.id, issuer_id:james.id, bitz_def_id: jamesThinksYouCool.id)
Bitz.create(user_id: delta.id, issuer_id:james.id, bitz_def_id: jamesThinksYouCool.id)

tomBradyThinksYouCool = BitzDef.create(user_id:tom_brady.id, name:'You cool')
Bitz.create(user_id: sally.id, issuer_id:tom_brady.id, bitz_def_id: tomBradyThinksYouCool.id)
Bitz.create(user_id: delta.id, issuer_id:tom_brady.id, bitz_def_id: tomBradyThinksYouCool.id)

usa_citizenship = BitzDef.create(user_id:usa_government.id, name:'us citizen')
q_usa_citizenship = BitzDef.create(user_id:q.id, name:'us citizen')

Bitz.create(user_id: sally.id, issuer_id:usa_government.id,  bitz_def_id: usa_citizenship.id)
Bitz.create(user_id: sally.id, issuer_id:usa_government.id, bitz_def_id: q_usa_citizenship.id)

us_dob = BitzDef.create(user_id:usa_government.id, name:'dob')
Bitz.create(user_id: sally.id,issuer_id:usa_government.id,  bitz_def_id: us_dob.id, value:'6.27.67')



