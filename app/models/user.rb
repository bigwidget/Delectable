# == Schema Information
# Schema version: 20110318154059
#
# Table name: users
#
#  id         :integer         not null, primary key
#  fname      :string(255)
#  lname      :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessible :fname, :lname, :email, :affiliation_ids
  
  has_many :memberships
  has_many :affiliations, :through => :memberships
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email,   :presence     => true,
                      :format       => { :with => email_regex },
                      :uniqueness   => { :case_sensitive => false }
  
end
