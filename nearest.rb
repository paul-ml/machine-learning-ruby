require 'rubygems'
require 'knn'
require 'pry'

@data = Array.new(100){ Array.new(4) { rand } }

 knn = KNN.new(@data)
binding.pry
p knn.nearest_neighbours([0.5, 0.5, 0.5, 0.5],2)

