class Patient < ActiveRecord::Base
  has_many :documents
  acts_as_votable 
end
