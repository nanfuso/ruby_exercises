#Use the `map` method with the `to_h` method to convert the array of hashes
#{}```
fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]
#{}```
#into a single hash where the keys are the names and the values are the colors. The result should look like:
#{}```
#{"apple" => "red", "banana" => "yellow", "grape" => "purple"}


foods = fruits.map { |fruit| fruit["name"]}
colors = fruits.map { |fruit| fruit["color"] }

array_1 = [foods[0], colors[0]]
array_2 = [foods[1], colors[1]]
array_3 = [foods[2], colors[2]]

everything = [array_1, array_2, array_3]
p everything.to_h

