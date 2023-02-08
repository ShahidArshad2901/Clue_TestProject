# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

questions_data = [
  {
    id: '1',
    question: 'Does it have a tail',
    answers: [
      {
        yes: {
          context: 'tail',
          question_id: '2'
        },
        no: {
          context: 'no tail',
          question_id: '3'
        }
      }
    ]
  },
  {
    id: '2',
    question: 'Is it a long tail (> 2in)',
    answers: [
      {
        yes: {
          context: 'long tail (> 2in)',
          question_id: '3'
        },
        no: {
          context: 'short tail (< 2in)',
          question_id: '3'
        }
      }
    ]
  },
  {
    id: '3',
    question: 'Is it nocturnal',
    answers: [
      {
        yes: {
          context: 'nocturnal',
        },
        no: {
          context: 'diurnal',
        }
      }
    ]
  }
]



questions_data.each do |data|
  Question.create(
    question: data[:question],
    question_id: data[:id],
    yes_answer: 'yes',
    yes_context: data[:answers][0][:yes][:context],
    yes_question_id: data[:answers][0][:yes][:question_id],
    no_answer: 'no',
    no_context: data[:answers][0][:no][:context],
    no_question_id: data[:answers][0][:no][:question_id]
  )
end

Conclusion.create(context: "no tail\nnocturnal", conclusion: "nn")
Conclusion.create(context: "no tail\ndiurnal", conclusion: "nd")

Conclusion.create(context: "tail\nlong tail (> 2in)\ndiurnal", conclusion: "lemur (tld)")
Conclusion.create(context: "tail\nlong tail (> 2in)\nnocturnal", conclusion: "tln")
Conclusion.create(context: "tail\nshort tail (< 2in)\ndiurnal", conclusion: "tsd")
Conclusion.create(context: "tail\nshort tail (< 2in)\nnocturnal", conclusion: "tsn")

