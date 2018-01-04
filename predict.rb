require  'rubygems'
require  'classifier'
require  'stemmer'

bayes = Classifier::Bayes.new('mac', 'windows')

bayes.train('mac', 'how to sync with itunes in mac')
bayes.train('windows', 'how to copy music to smart phone')
bayes.train('mac', 'is airdrop faster than usb tranfer')
bayes.train('mac', 'how to tranfer data from pc using usb to smartphone')
bayes.train('mac', 'how to tranfer data from pc using usb to iphone')
bayes.train('windows', 'how to connect smartphone to pc')


#comment = 'how to transfer data from mac to smartphone'
comment = 'whether iphone can be connected to windows pc or system'
puts bayes.classifications(comment).inspect

puts bayes.classify(comment)

p bayes