require 'decisiontree'


attributes = ['Temperature']

training = [
    [96 , 'Healthy'],
    [98 , 'Sick'],
    [100 , 'Serious fever'],
    [105, 'Dead'],
]

dec_tree = DecisionTree::ID3Tree.new(attributes,training, 'sick', :continuous)
dec_tree.train


test = [106.4, 'Healthy']
dec_tree.predict(test)