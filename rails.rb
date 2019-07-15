# Rails Assessments

# We've done the following exercises in Javascript, Now try them in RUBY (You can do them in Javascript again if you want extra practice - not required.)
#
# The World Translator
# Write a Method named hello_world that:
#
# takes 1 argument, a language code (e.g. "es", "de", "en")
# returns "Hello, World" for the given language, for at least 3 languages. It should default to returning English.
#hello_world("es") should return "Hola Mundo"
#hello_world("de") should return "Hallo Welt"
def hello_world(code)
  if code == "es"
    "Hola Mundo"
  elsif code == "de"
    "Hallo Welt"
  else
    "Hello World"
  end
end
p hello_world("woof")


# The Grade Assigner
# Write a Method named assign_grade that:
#
# takes 1 argument, a number score.
# returns a grade for the score, either "A", "B", "C", "D", or "F".
# assign_grade(90) should return A
# assign_grade(75) should return C
def assign_grade(score)
  if score <= 60
    "F"
  elsif score > 60 && score <= 70
    "D"
  elsif score > 70 && score <= 80
    "C"
  elsif score > 80 && score <= 90
    "B"
  else
    "A"
  end
end
p assign_grade(75)


# The Pluralizer
# Write a method named pluralizer that:
#
# takes 2 arguments, a noun and a number.
# returns the number and pluralized form of the noun, if necessary.
# pluralizer(5, cat) should return "5 cats"
# pluralizer(1, dog) should return "1 dog" because the number one does not require a plural noun
# Arguments will always be a number and a singular noun.
def pluralizer(number, noun)
  if number == 1
    "#{number}" + " " + "#{noun}"
  else
    "#{number}" + " " + "#{noun}" + "s"
  end
end
p pluralizer(0, "dog")
# Bonus: Make it handle a few collective nouns like "sheep", "geese", "children", "people" and "species".
