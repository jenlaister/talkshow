require './config/environment'

class ApplicationController < Sinatra::Base

set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    # "Hello, World!"
    "Welcome to the Daily Show!"
  end

end
