namespace :custom_rake do
  
  desc "creates sample posts"
  task :create_posts => :environment do
    10.times do |n|
      Post.create!(
        :title => "Title #{n}",
        :body => "Body #{n}"
      )
    end
  end

  desc "deletes all posts"
  task :delete_posts => :environment do
    Post.destroy_all
  end

  desc "re-seeds posts"
  task :reset_posts => [:delete_posts, :create_posts]
end
