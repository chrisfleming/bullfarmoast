
namespace :db do
  desc "Load feed database from wordpress rss feed."
   task :update_feed => :migrate do
    FeedEntry.update_from_feed('http://feeds2.feedburner.com/BullFarmOast')
  end
end