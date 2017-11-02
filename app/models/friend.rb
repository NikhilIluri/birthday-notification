class Friend < ApplicationRecord
  belongs_to :user
  #validates :name, presence: true
  #validates :email, presence: true
  #validates :dob, presence: true
  #validates :mobile, presence: true
  enum reminder: ['On that day', 'A day before','2 days before']
  
end
