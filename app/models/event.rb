class Event < ActiveRecord::Base
	validates :name, length: { minimum: 3 }
    validates :place, presence: true
    validates :eventdate, presence: true
    validates :eventtime, presence: true
    has_many :event_users
    has_many :users, :through => :event_users, :source => :user
end