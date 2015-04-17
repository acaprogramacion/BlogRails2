class PostEdit < ActiveRecord::Base
  belongs_to :post
  belongs_to :editor, class_name: 'User', foreign_key: 'user_id'
end
