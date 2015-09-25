fred = User.where(email: "fred.schoeneman@bacchan.al").first

fred.positions.create(positionable: Org.first, tenure_start: Date.today - 3.months, title: "Proprietor")

alisa = User.where(email: "alisa.mathewson@bacchan.al").first
alisa.positions.create(positionable: Org.first, tenure_start: (Date.today - 3.months), tenure_end: (Date.today - 1.week), title: "Biology & Ecology Intern")
