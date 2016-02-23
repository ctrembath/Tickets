require 'sinatra'

set :public_dir, Proc.new { File.join(root, "..", "public") }

get '/' do
  Hello World
end