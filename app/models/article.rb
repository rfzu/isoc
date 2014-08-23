class Article < ActiveRecord::Base
  belongs_to :user, :foreign_key => :user_id
  #default_scope -> { order('created_at DESC') }
end
