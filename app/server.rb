require 'sinatra'
require 'flickr_fu'

set :public_dir, Proc.new { File.join(root, "..", "public") }

get '/' do
	flickr = Flickr.new('flickr.yml')
	@photos = flickr.photos.search(:tags => 'cutecat')
	puts params[:searchtag]
	puts "***************************"
	erb :index
end


post '/' do
	puts params[:searchtag]
	puts "***************************"
	erb :index
end

# def get_photos
# 	puts "found #{photos.size} photo(s)"
# 	@photos.each do |photo|
#     puts photo.title
#     end
# end
