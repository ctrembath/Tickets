require 'sinatra'
require 'flickr_fu'
require 'will_paginate'
require 'will_paginate/array'


set :public_dir, Proc.new { File.join(root, "..", "public") }


get '/' do
	connect_to_flickr
	if params[:search]
		search_flickr(params[:search])
	else
		search_flickr('glastonbury')
	end
	erb :index
end

private
	
def connect_to_flickr
	@flickr = Flickr.new('flickr.yml')
end

def search_flickr(search_term)
	@photos = @flickr.photos.search(:tags => search_term).paginate(:page  => params[:page], :per_page => 12)
end
