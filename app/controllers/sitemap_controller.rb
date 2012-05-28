class SitemapController < ApplicationController
  layout nil

  def index
      headers['Content-Type'] = 'application/xml'
     
      @pages = Page.lightbox
      @attractions = Attraction.all

      last_page = Page.last

      if stale?( :last_modified => last_page.updated_at.utc )
          respond_to do |format|
              format.xml { }
          end
      end

  end

end
