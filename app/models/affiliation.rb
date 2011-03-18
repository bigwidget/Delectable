# == Schema Information
# Schema version: 20110318154059
#
# Table name: affiliations
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Affiliation < ActiveRecord::Base
  
  attr_accessible :name
  
  has_many :memberships
  has_many :users, :through => :memberships
  
end
