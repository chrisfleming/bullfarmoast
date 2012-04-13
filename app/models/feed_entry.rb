class FeedEntry < ActiveRecord::Base

require 'open-uri'

def self.update_from_feed(feed_url)
  feed = SimpleRSS.parse(open(feed_url))

  feed.items.each do |item|
    
    puts "Title: #{item.title}"
    puts "Link: #{item.link}"
    puts "Guid: #{item.guid}"
    puts "Content: #{item.content_encoded}"
    puts "=" * 80
    
    unless exists? :guid => item.guid
      create!(
        :name         => item.title, 
        :summary      => item.summary,
        :url          => item.link,
        :content      => item.content_encoded,
        :published_at => item.pubDate,
        :guid         => item.id
      )
    end
  end
end



end
