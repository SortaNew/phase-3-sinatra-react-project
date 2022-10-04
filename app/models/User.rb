class User < ActiveRecord::Base
    has_many :reviews
    has_many :locations, through: :reviews

    # def self.create_user(username, password)
    #     self.create(username: username, password: password)
    # end

    # def create_location(location_name, adress, image_Url, category)
    #     Location.create(location_name: location_name, address: address, image_Url: image_Url, category: category)
    # end

    # def create_review(location, description)
    #     Review.create(user_id: self.id, location_id: location.id, description: description)
    # end

    # def update_review(review, updated_review)
    #     edit = self.reviews.find_by(review_id: review.id)
    #     if edit.user_id == self.user_id
    #         edit.update(description: updated_review)
    #     end
    # end

end