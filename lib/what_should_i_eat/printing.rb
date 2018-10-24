module WhatShouldIEat
	module Printing
		def self.print_recipe(recipe)
			random_recipe = recipe
		  name = random_recipe['label']
			url = random_recipe['url']
	  	puts "Here's a recipe for you:\n#{name} \n#{url}" 
		end
	end
end
