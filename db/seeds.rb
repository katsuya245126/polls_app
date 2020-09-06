# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(username: 'Raphael')
user2 = User.create!(username: 'Ethan')
user3 = User.create!(username: 'L')

poll1 = Poll.create!(user_id: user1.id, title: 'Sports')
poll2 = Poll.create!(user_id: user2.id, title: 'Video games')
poll3 = Poll.create!(user_id: user3.id, title: 'Food')

question1 = Question.create!(poll_id: poll1.id, text: 'How long do you play sports per week?')
question2 = Question.create!(poll_id: poll1.id, text: 'Which of the following three sports would you rather play?')
question3 = Question.create!(poll_id: poll1.id, text: 'On a scale of 1-3, how good are you a sports?')

question4 = Question.create!(poll_id: poll2.id, text: 'How much video games do you play per day?')
question5 = Question.create!(poll_id: poll2.id, text: 'Which of the following genres do you like the most?')
question6 = Question.create!(poll_id: poll2.id, text: 'Which device do you play on the most?')

question7 = Question.create!(poll_id: poll3.id, text: 'Which of the following cuisines do you like the most?')
question8 = Question.create!(poll_id: poll3.id, text: 'How often do you cook per week?')
question9 = Question.create!(poll_id: poll3.id, text: 'How would you rate your cooking skill?')

answer1 = AnswerChoice.create!(question_id: question1.id, text: '0-1 hours')
answer2 = AnswerChoice.create!(question_id: question1.id, text: '2-4 hours')
answer3 = AnswerChoice.create!(question_id: question1.id, text: '5-7 hours')

answer4 = AnswerChoice.create!(question_id: question2.id, text: 'Basketball')
answer5 = AnswerChoice.create!(question_id: question2.id, text: 'Baseball')
answer6 = AnswerChoice.create!(question_id: question2.id, text: 'Soccer')

answer7 = AnswerChoice.create!(question_id: question3.id, text: '1')
answer8 = AnswerChoice.create!(question_id: question3.id, text: '2')
answer9 = AnswerChoice.create!(question_id: question3.id, text: '3')

answer10 = AnswerChoice.create!(question_id: question4.id, text: '0-3 hours')
answer11 = AnswerChoice.create!(question_id: question4.id, text: '3-6 hours')
answer12 = AnswerChoice.create!(question_id: question4.id, text: '6-9 hours')

answer13 = AnswerChoice.create!(question_id: question5.id, text: 'FPS')
answer14 = AnswerChoice.create!(question_id: question5.id, text: 'MMORPG')
answer15 = AnswerChoice.create!(question_id: question5.id, text: 'MOBA')

answer16 = AnswerChoice.create!(question_id: question6.id, text: 'PC')
answer17 = AnswerChoice.create!(question_id: question6.id, text: 'XBOX')
answer18 = AnswerChoice.create!(question_id: question6.id, text: 'Playstation')

answer19 = AnswerChoice.create!(question_id: question7.id, text: 'Japanese')
answer20 = AnswerChoice.create!(question_id: question7.id, text: 'Mexican')
answer21 = AnswerChoice.create!(question_id: question7.id, text: 'Italian')

answer22 = AnswerChoice.create!(question_id: question8.id, text: 'Never')
answer23 = AnswerChoice.create!(question_id: question8.id, text: 'Few times a week')
answer24 = AnswerChoice.create!(question_id: question8.id, text: 'Everyday')

answer25 = AnswerChoice.create!(question_id: question9.id, text: 'Only cook instant food')
answer26 = AnswerChoice.create!(question_id: question9.id, text: 'Few simple recipes')
answer27 = AnswerChoice.create!(question_id: question9.id, text: 'Complex recipes')

Response.create!(user_id: user1.id, answer_choice_id: answer10.id)
Response.create!(user_id: user1.id, answer_choice_id: answer13.id)
Response.create!(user_id: user1.id, answer_choice_id: answer16.id)
Response.create!(user_id: user1.id, answer_choice_id: answer19.id)
Response.create!(user_id: user1.id, answer_choice_id: answer22.id)
Response.create!(user_id: user1.id, answer_choice_id: answer25.id)

Response.create!(user_id: user2.id, answer_choice_id: answer1.id)
Response.create!(user_id: user2.id, answer_choice_id: answer4.id)
Response.create!(user_id: user2.id, answer_choice_id: answer7.id)
Response.create!(user_id: user2.id, answer_choice_id: answer20.id)
Response.create!(user_id: user2.id, answer_choice_id: answer23.id)
Response.create!(user_id: user2.id, answer_choice_id: answer26.id)

Response.create!(user_id: user3.id, answer_choice_id: answer2.id)
Response.create!(user_id: user3.id, answer_choice_id: answer5.id)
Response.create!(user_id: user3.id, answer_choice_id: answer8.id)
Response.create!(user_id: user3.id, answer_choice_id: answer11.id)
Response.create!(user_id: user3.id, answer_choice_id: answer14.id)
Response.create!(user_id: user3.id, answer_choice_id: answer17.id)
