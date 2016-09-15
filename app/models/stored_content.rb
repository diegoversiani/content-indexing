class StoredContent
  include Mongoid::Document

  field :url_origin
  field :content, :type => Hash

end
