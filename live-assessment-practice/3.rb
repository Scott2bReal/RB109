# Write a function that maps a string into an array of name, string, and
# occupation pairs. Return an empty array if given an empty string.
#
# Input: String with names, ages and occupations
# Output: Array of hashes, keys being :name, :age, and :occupation
#
# Rules:
#   String will always be name, age, occupation in that order?
#   Always separated by comma?
# 
# Algorithm:
#   Split string by comma
#   For every slice! size of 3 of resulting array
#     make hash of that slice
#     add that hash to people array
#   return people array
#     
#
#   
def make_person(person_array)
  person = {}
  person[:name] = person_array[0]
  person[:age] = person_array[1]
  person[:occupation] = person_array[2]
  person
end

def organize(people_string)
  people = []
  people_string.split(', ').each_slice(3) do |slice|
    person = make_person(slice)
    people << person
  end
  people
end

p organize("John Mayer, 41, Singer, Emily Blunt, 36, Actor") == [
  {:name=>"John Mayer", :age=>"41", :occupation=>"Singer"},
  {:name=>"Emily Blunt", :age=>"36", :occupation=>"Actor"}
]

p organize("Conan O'Brien, 56, Talk Show Host, Anna Wintour, 69, Editor") == [
  {:name=>"Conan O'Brien", :age=>"56", :occupation=>"Talk Show Host"},
  {:name=>"Anna Wintour", :age=>"69", :occupation=>"Editor"}
]

p organize("") == []
