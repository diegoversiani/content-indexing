require 'open-uri'

class StoredContent
  include Mongoid::Document

  field :url
  field :content, default: []

  def process_and_save
    process
    save
  end

  def process
    content_from_url = []

    page = Nokogiri::HTML(open(url))
    elements = page.css('h1, h2, h3, a')

    elements.each do |element|
      if element.name == 'a'
        content_from_url.push({ 
          :element => element.name, 
          :value => { :href => element['href'], :text => element.text } 
        })
      else
        content_from_url.push({
          :element => element.name,
          :value => element.text
        })
      end
    end

    self.content = content_from_url
  end

end
