
namespace :db do
  desc "Load feed database from wordpress rss feed."
   task :update_feed => :migrate do
    FeedEntry.update_from_feed('http://www.bullfarmoast.co.uk/blog/feed/')
  end
end
