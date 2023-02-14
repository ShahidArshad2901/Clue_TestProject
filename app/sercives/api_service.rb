# class ApiService
#     def self.fetch_questions
#         response = RestClient.get("https://api.example.com/questions")
#         questions_data = JSON.parse(response.body)
#         questions = []
#         questions_data.each do |data|
#           questions << Question.new(
#             question: data["question"],
#             question_id: data["id"],
#             yes_answer: 'yes',
#             yes_context: data["answers"][0]["yes"]["context"],
#             yes_question_id: data["answers"][0]["yes"]["question_id"],
#             no_answer: 'no',
#             no_context: data["answers"][0]["no"]["context"],
#             no_question_id: data["answers"][0]["no"]["question_id"]
#           )
#         end
        
#         return questions
#     end
  
#     def self.fetch_conclusions
#         response = RestClient.get("https://api.example.com/conclusions")
#         conclusions_data = JSON.parse(response.body)
#         conclusions = []
#         conclusions_data.each do |data|
#           conclusions << Conclusion.new(
#             context: data["context"],
#             conclusion: data["conclusion"]
#           )
#         end

#         return conclusions
#     end
#   end
  
require 'net/http'
require 'json'

endpoint_url = "https://example.com/questions.json"

response = Net::HTTP.get(URI(endpoint_url))

data = JSON.parse(response)

questions = data["questions"]
conclusions = data["conclusions"]
