r = Enum.to_list(1 .. 10)

t10 = lc i inlist r, do: i*10

IO.puts inspect t10

animals = ["cat", "dog", "mouse"]
foods   = ["cheese", "meat", "sprouts"]

# Same as scala for
anifood = lc a inlist animals, f inlist foods, do: {a, f}

IO.puts "#{inspect anifood}\n"

is = Enum.to_list(1..10)
js = is

d = lc i inlist is, j inlist js, i < j, do: {i, j}

IO.puts "#{inspect d}\n"


# can destructure stuff in list comprehensions.
animal_and_food = [{:cat, :mice}, {:dog, :anything}, {:slug, :my_plants}]

food_and_animal = lc {animal, food} inlist animal_and_food, do: {food, animal}

IO.puts "#{inspect food_and_animal}\n"

