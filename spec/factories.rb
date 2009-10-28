require 'populator'
require 'faker'

Factory.sequence :body do |n|
  Populator.sentences(5..500)
end

Factory.sequence :title do |n|
  Populator.words(1..4).titleize
end

Factory.define :reply, :class => :post do |r|
  r.body { Factory.next(:body) }
end

Factory.define :post do |p|
  p.title { Factory.next(:title) } 
  p.body { Factory.next(:body) }
end