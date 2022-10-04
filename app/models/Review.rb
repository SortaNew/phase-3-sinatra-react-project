class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :location

    def full_review
        "Review by #{user.username} for #{location.location_name}: #{self.description}"
    end

end