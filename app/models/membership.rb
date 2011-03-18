# == Schema Information
# Schema version: 20110318154059
#
# Table name: memberships
#
#  id             :integer         not null, primary key
#  user_id        :integer
#  affiliation_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Membership < ActiveRecord::Base

  belongs_to :user
  belongs_to :affiliation
  
end
