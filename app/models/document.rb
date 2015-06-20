class Document < ActiveRecord::Base
  belongs_to :patient
  belongs_to :user
  acts_as_votable 
end
