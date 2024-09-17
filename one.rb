require 'pry-byebug'

dogs = {
  type: "dog",
  breed: ["Labrador", "Poodle"],
  colour: ["brown", "golden"],
  name: ["Mino", "Reg"]
}
cats = {
  type: "cat",
  colour: ["black", "white"],
  name: ["Lilly", "Kimba"]
}

def activity(animal)
  if animal[:type] == "cat" && animal[:colour].include?("black")
    puts "The cat is black!"
  elsif animal[:type] == "dog" && animal[:colour].include?("brown")
    puts "The dog is brown!"
  else
    puts "Whooops"
  end
end
binding.pry

# Call the method with both cats and dogs
p activity(cats)  # "The cat is black!"
p activity(dogs)  # "The dog is brown!"