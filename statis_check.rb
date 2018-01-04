require 'decisiontree'

attributes = ['satisfied', 'okok', 'not_satisfied']

training = [
    [22,6, 2, 'satisfied'],
    [22,2,6,'satisfied'],
    [15, 10, 5, 'okok'],
    [15, 5, 10, 'okok'],
    [5, 10, 15, 'not satisfied'],
    [10, 5,15, 'not satisfied'],
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training,'yes', :continuous)
dec_tree.train

test = [23, 2, 5, 'satisfied']
p dec_tree.predict(test)