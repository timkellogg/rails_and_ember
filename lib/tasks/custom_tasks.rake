namespace :posts do

  desc "creates sample posts"
  task :create => :environment do
    10.times do |n|
      Post.create!(
        :title => Faker::Lorem.sentence,
        :body  => Faker::Lorem.paragraph(2, false, 4)
      )
    end
  end

  desc "deletes all posts"
  task :delete => :environment do
    Post.destroy_all
  end

  desc "re-seeds posts"
  task :reset_posts => [:delete, :create]
end
