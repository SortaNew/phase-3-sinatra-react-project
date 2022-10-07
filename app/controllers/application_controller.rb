class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/locations" do
    Location.all.to_json
  end

  get "/locations/:id" do
    location = Location.find(params[:id])
    {location: location, reviews: location.reviews}.to_json
  end

  post "/locations" do
    location = Location.create(
      location_name: params[:location_name],
      address: params[:address],
      image_Url: params[:image_Url],
      category: params[:category],
    )
    location.to_json
  end

  patch "locations/:id" do
    location = Location.find(params[:id])
    location.update(
      location_name: params[:location_name],
      address: params[:address],
      image_Url: params[:image_Url],
      category: params[:category],
    )
    location.to_json
  end

  delete "locations/:id" do
    location = Location.find(params[:id])
    location.destroy  
    location.to_json
  end

  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json
  end

  post "/reviews" do
    review = Review.create(
      user_id: params[:user_id],
      location_id: params[:location_id],
      description: params[:description],
    )
    review.to_json
  end

  patch "/reviews/:id" do
    review = Review.find(params[:id])
    if review.user_id != params[:user_id]
      {error: "unAuthorized you dont own this post"}.to_json
    else
      review.update(
        # user_id: params[:user_id],
        description: params[:description],
      )
      review.to_json

    end
  end

  post "/login" do 
    user = User.find_by!(username:params[:username])
    if user.password == params[:password]
      user.to_json
    else
      {message: "bad password"}.to_json
    end
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  post "/users" do
    user = User.create(
      username: params[:username],
      password: params[:password],
    )
    user.to_json
  end

  patch "users/:id" do
    user = User.find(params[:id])
    user.update(
      username: params[:username],
      password: params[:password],
    )
    user.to_json
  end

  delete "users/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end


end
