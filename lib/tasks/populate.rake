namespace :db do
  desc "Repopulate database."
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [Post].each(&:delete_all)
    
    Post.populate 20 do |post|
      post.title = Populator.words(1..4).titleize
      post.body =  Populator.sentences(5..500)
    end
    
  end
end