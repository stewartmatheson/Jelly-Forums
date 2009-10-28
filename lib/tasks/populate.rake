namespace :db do
  desc "Repopulate database."
  task :populate => :environment do
    [Post].each(&:delete_all)
    rand(10).times do
      replies = Array.new
      rand(50).times { replies << Factory(:reply) }
      Factory(:post, :replies => replies)
    end
  end
end