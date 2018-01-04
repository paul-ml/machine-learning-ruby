require 'decisiontree'

attributes = ['age', 'education', 'status','Maritial status']

training = [
    ['19+','Masters','Passed', 'Yes', 'Sorry'],
    ['19+', 'phd ','failed','No', 'Sorry'],
    ['19-', 'phd', 'Passed', 'Yes', 'Sorry'],
    ['19-','Masters', 'Passed', ' No', 'Sorry'],
    ['19-', 'Junior', 'Passed', 'No', 'Yes'],
    ['19-', 'Junior', 'failed','Yes', 'Sorry'],
]


dec_tree =DecisionTree::ID3Tree.new(attributes, training, 'Yes', :discrete)
dec_tree.train

test = ['19-', 'phD', 'Failed','No']
p dec_tree.predict(test)

