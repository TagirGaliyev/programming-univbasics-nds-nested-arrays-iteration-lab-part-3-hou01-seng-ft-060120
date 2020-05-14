def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  src_copy = src
  src_copy.flatten!
  message = ""
  for item in src_copy
    message += item.class === "String" ? item + " " : ""
  end
  message
end
