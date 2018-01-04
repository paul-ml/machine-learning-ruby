require 'naive_bayes'

a = NaiveBayes.load('/admission_eligible.rb')

b = NaiveBayes.load('/admission_eligible.rb')

p a.classify(*b)