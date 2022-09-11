class User < ActiveRecord::Base
    has_many :Comments
end