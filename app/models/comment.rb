class Comment < ActiveRecord::Base
    belongs_to :users
    belongs_to :recipes
end