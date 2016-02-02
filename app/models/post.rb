class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  def formatted_duration
    total_seconds = Time.now - self.created_at
    hours = total_seconds / (60 * 60)
    minutes = (total_seconds / 60) % 60
    seconds = total_seconds % 60
    if hours.between?(0,2)
      "#{hours.to_i} hour ago"
    elsif hours.between?(2,24)
      "#{hours.to_i} hours ago"
    elsif minutes.between?(0,2)
      "#{minutes.to_i} minute ago"
    elsif minutes.between?(2,60)
      "#{minutes.to_i} minutes ago"
    elsif seconds.between?(0,2)
      "#{seconds.to_i} second ago"
    else
      "#{seconds.to_i} seconds ago"
    end
  end
end
