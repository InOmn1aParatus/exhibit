#Iteration 1

pry(main)> require './lib/exhibit'
# => true

pry(main)> require './lib/patron'
# => true

pry(main)> exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
# => #<Exhibit:0x00007fcb13bd22d0...>

pry(main)> exhibit.name
# => "Gems and Minerals"

pry(main)> exhibit.cost
# => 0

pry(main)> patron_1 = Patron.new("Bob", 20)
# => #<Patron:0x00007fcb13b5c7d8...>

pry(main)> patron_1.name
# => "Bob"

pry(main)> patron_1.spending_money
# => 20

pry(main)> patron_1.interests
# => []

pry(main)> patron_1.add_interest("Dead Sea Scrolls")

pry(main)> patron_1.add_interest("Gems and Minerals")

pry(main)> patron_1.interests
# => ["Dead Sea Scrolls", "Gems and Minerals"]

# Iteration 2

pry(main)> require './lib/museum'
# => true

pry(main)> require './lib/patron'
# => true

pry(main)> require './lib/exhibit'
# => true

pry(main)> dmns = Museum.new("Denver Museum of Nature and Science")
# => #<Museum:0x00007fb400a6b0b0...>

pry(main)> dmns.name
# => "Denver Museum of Nature and Science"

pry(main)> dmns.exhibits
# => []

pry(main)> gems_and_minerals = Exhibit.new({name: "Gems and 
Minerals", cost: 0})
# => #<Exhibit:0x00007fb400bbcdd8...>

pry(main)> dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
# => #<Exhibit:0x00007fb400b851f8...>

pry(main)> imax = Exhibit.new({name: "IMAX",cost: 15})
# => #<Exhibit:0x00007fb400acc590...>

pry(main)> dmns.add_exhibit(gems_and_minerals)

pry(main)> dmns.add_exhibit(dead_sea_scrolls)

pry(main)> dmns.add_exhibit(imax)

pry(main)> dmns.exhibits
# => [#<Exhibit:0x00007fb400bbcdd8...>, #<Exhibit:0x00007fb400b851f8...>, #<Exhibit:0x00007fb400acc590...>]

pry(main)> patron_1 = Patron.new("Bob", 20)
# => #<Patron:0x00007fb400a51cc8...>

pry(main)> patron_1.add_interest("Dead Sea Scrolls")

pry(main)> patron_1.add_interest("Gems and Minerals")

pry(main)> patron_2 = Patron.new("Sally", 20)
# => #<Patron:0x00007fb400036338...>

pry(main)> patron_2.add_interest("IMAX")

pry(main)> dmns.recommend_exhibits(patron_1)
# => [#<Exhibit:0x00007fb400bbcdd8...>, #<Exhibit:0x00007fb400b851f8...>]

pry(main)> dmns.recommend_exhibits(patron_2)
# => [#<Exhibit:0x00007fb400acc590...>]