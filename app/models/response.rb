class Response < ApplicationRecord
  belongs_to :answer_choice
  belongs_to :respondent,
    class_name: 'User',
    primary_key: 'id',
    foreign_key: 'user_id'
  has_one :question, through: :answer_choice

  validate :not_duplicate_reponse
  validate :not_poll_author

  def not_poll_author
    errors['author'] << 'can not respond to own poll' if question.poll.user_id == respondent.id
  end

  def not_duplicate_reponse
    errors['duplicate'] << 'answer detected.' if respondent_already_answered?
  end

  def sibling_responses
    question.responses.where.not(user_id: self.id)
  end

  def respondent_already_answered?
    sibling_responses.exists?(user_id: respondent.id)
  end
end
