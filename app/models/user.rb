class User < ActiveRecord::Base
	validates :firstname, length: { minimum: 3 }
    validates :lastname, length: { minimum: 1 }
    validates :phone, length:{maximum: 10}
     validates :email, :email_format => {:message => 'is not looking good'}
	has_many :event_users
    has_many :events, :through => :event_users
end
