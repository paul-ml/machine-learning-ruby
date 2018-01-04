require 'nbayes'

nbayes = NBayes::Base.new
nbayes.train("hey sanush is waving at you".split(/\s+/),'NORMAL')
nbayes.train("hey sanu is someone you dont know for today".split(/\s+/),'SPAM')
nbayes.train("Respected sir thank you for the mail".split(/\s+/), 'SPAM')

tokens = "Hey sir hope to see you soon".split(/\s+/)
result = nbayes.classify(tokens)

p result.max_class


p result['SPAM']
p result['NORMAL']