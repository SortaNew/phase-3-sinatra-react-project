class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/locations" do
    Location.all.to_json
  end

  get "/reviews" do
    Review.all.to_json
  end

  # patch "/reviews/#{review.id}" do
  #   Review.all.find_by(review_id: review.id)
  # end

  get "/users" do
    User.all.to_json
  end


end
