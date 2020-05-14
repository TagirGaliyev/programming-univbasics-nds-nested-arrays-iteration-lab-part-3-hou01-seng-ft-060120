def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  src.flatten!
  message = ""
  for item in src
    message += item.class === "String" ? item + " " : ""
  end
  message
end

mixed_data_1 = [
  ["The", 4, "quick"],
  [-1, "brown", "fox", 30],
  ["studied", 101, 233, "Ruby"]
]

mixed_data_2 = [
  ["Turning", "and", "turning", "in", "the", "widening", "gyre"],
  ["The", "falcon", "cannot", "hear", "the", "falconer;"],
  ["Things", "fall", "apart;", "the", "centre", "cannot", "hold"]
]

puts join_nested_strings(mixed_data_1)
puts join_nested_strings(mixed_data_2)
