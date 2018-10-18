require "what_should_i_eat/version"
require 'net/http'
require 'json'

module WhatShouldIEat
  def choose_recipe
  	result = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
  	recipes = JSON.parse(results)
  	recipes.first['items'].sample
  end

  def print_recipe 
  	random_recipe = choose_recipe
  	puts "Here's a recipe for you:\n#{random_recipe['label']} \n#{random_recipe['url']}" 
	end

	print_recipe
end
