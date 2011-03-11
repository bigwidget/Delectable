# == Schema Information
# Schema version: 20110311202351
#
# Table name: affiliations
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Affiliation < ActiveRecord::Base

  belongs_to :user
end
