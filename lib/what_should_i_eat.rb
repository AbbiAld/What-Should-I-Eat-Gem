require "what_should_i_eat/version"
require 'net/http'
require 'json'

module WhatShouldIEat
  def WhatShouldIEat.choose_recipe
  	results = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
  	recipes = JSON.parse(results)
  	recipes.first['items'].sample
  end

  def WhatShouldIEat.print_recipe 
  	random_recipe = WhatShouldIEat.choose_recipe
  	name = random_recipe['label']
  	url = random_recipe['url']
  	puts "Here's a recipe for you:\n#{name} \n#{url}" 
	end

end
