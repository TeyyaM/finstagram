class FinstagramPost < ActiveRecord::Base
    
    belongs_to :user
    has_many :comments
    has_many :likes

    validates_presence_of :user

    
  def humanized_time_ago
    time_ago_in_seconds = Time.now - self.created_at
    time_ago_in_minutes = time_ago_in_seconds / 60

    if time_ago_in_minutes >= 60
      "#{(time_ago_in_minutes / 60).to_i} hours ago"
    else
      "#{time_ago_in_minutes.to_i} minutes ago"
    end
  end
    # def humanized_time_ago
    #     time_ago_in_seconds = Time.now - self.created_at
    #     time_ago_in_minutes = time_ago_in_seconds / 60

    #     if time_ago_in_minutes > 60
    #         "#{(time_ago_in_minutes / 60).to_i} hours ago"
    #         #this was my personal addition
    #     elsif time_ago_in_minutes == 60
    #         "an hour ago"
    #         #as was this
    #     elsif time_ago_in_seconds == 60
    #         "a minute ago"
    #         #and this
    #     elsif time_ago_in_seconds < 60
    #         "less than a minute ago"
    #     else
    #         "#{(time_ago_in_minutes.to_i} minutes ago"
    #     end
    # end

    def like_count
        self.likes.size
    end 

    def comment_count
        self.comments.size
    end 
end