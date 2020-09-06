class Poll < ApplicationRecord
  validates :title, :presence => true

  belongs_to :author,
    class_name: 'User',
    primary_key: 'id',
    foreign_key: 'user_id'

  has_many :questions
end
