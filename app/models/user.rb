# == Schema Information
# Schema version: 20110311202351
#
# Table name: users
#
#  id                      :integer         not null, primary key
#  fname                   :string(255)
#  lname                   :string(255)
#  wants_to_be_contributor :binary
#  email                   :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#

class User < ActiveRecord::Base
  has_many :affiliations, :dependent => :destroy
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email,   :presence     => true,
                      :format       => { :with => email_regex },
                      :uniqueness   => { :case_sensitive => false }
  
end
