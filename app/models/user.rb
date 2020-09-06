class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :authored_polls,
    class_name: 'Poll',
    primary_key: 'id',
    foreign_key: 'user_id'

  has_many :responses

  def all_polls
    response_join = <<-SQL
      LEFT JOIN (
        SELECT *
          FROM responses
         WHERE user_id = #{self.id}
      ) AS responses ON answer_choices.id = responses.answer_choice_id
    SQL

    Poll
      .joins(questions: :answer_choices)
      .joins(response_join)
      .group('polls.id')
  end

  def completed_polls
    all_polls.having('COUNT(DISTINCT questions.id) = COUNT(DISTINCT responses.id)')
  end

  def incomplete_polls
    all_polls.having('COUNT(DISTINCT questions.id) > COUNT(DISTINCT responses.id)')
  end
end
