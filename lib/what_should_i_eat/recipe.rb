module WhatShouldIEat
  class Recipe
    def choose_recipe
    	results = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
    	recipes = JSON.parse(results)
    	recipes.first['items'].sample
    end
	end
end
