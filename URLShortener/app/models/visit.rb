# == Schema Information
#
# Table name: visits
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  short_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visit < ApplicationRecord
  validates :user_id, :short_id, presence: true

  def self.record_visit!(user, shortened_url)
    Visit.new(user_id: user.id, short_id: shortened_url.id)
  end
end
