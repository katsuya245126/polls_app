class Question < ApplicationRecord
  validates :text, presence: true

  belongs_to :poll

  has_many :answer_choices

  has_many :responses, through: :answer_choices

  def n1_results
    all_answers = answer_choices
    answer_results = Hash.new(0)

    all_answers.each do |answer|
      answer_results[answer.text] += answer.responses.count
    end

    answer_results
  end

  def results
    answers = answer_choices
      .select('text, COUNT(responses.id) AS answer_count')
      .left_joins(:responses)
      .group(:text)

    answer_count = {}

    answers.each do |answer|
      answer_count[answer.text] = answer.answer_count
    end

    answer_count
  end
end
