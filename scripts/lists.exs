a = [1,2,3]
b = [4,5,6]
c = a ++ b

d = c -- [1,2,3]
# [4,5,6]


# this looks like python (that's a good thing)
1 in d
# true

"cat" in d
# false


#Keyword lists
me = [name: "dan", city: "london", status: "drunk"]
# this is converted to
[{:name, "dan"}, {:city, "london"}, {:status, "drunk"}] # don't want to type this much!

# if the last thing we see in the declaration is a keyword we can ignore the ""
# this is like dict and {} in python # thisredwineisreallygoood!
