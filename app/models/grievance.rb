class Grievance < ActiveRecord::Base
  validates_presence_of :content
  validates :content, :length => { :maximum => 300 }
end
