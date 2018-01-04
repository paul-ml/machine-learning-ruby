require 'phashion'

img1 = Phashion::Image.new('abc.png')

img2 = Phashion::Image.new('abc123.png')

 p img1.duplicate?(img2)

p img1.distance_from(img2)
img1.fingerprint