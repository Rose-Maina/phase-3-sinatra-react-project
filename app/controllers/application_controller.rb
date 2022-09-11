class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/comments" do 
    comments = Comment.all
    comments.to_json
  end

  post "/comments" do
    comments = Comment.create(username: params[:username], comment: params[:comment])
    comments.to_json
  end
  
end
