require 'naive_bayes'

a = NaiveBayes.new(:spam, :normal)

a.train(:spam, 'bad', 'word')
a.train(:normal,'any', 'thing')

b = 'thats bad thing'.split(' ')
p a.classify(*b)