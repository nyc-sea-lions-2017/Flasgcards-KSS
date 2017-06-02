require 'open-uri'
require 'json'

VEHICLES_EASY_URL = "https://opentdb.com/api.php?amount=20&category=28&difficulty=easy&type=multiple"

GENERAL_KNOWLEDGE_EASY_URL = "https://opentdb.com/api.php?amount=20&category=9&difficulty=easy&type=multiple"

ANIMALS_MEDIUM_URL = "https://opentdb.com/api.php?amount=20&category=27&difficulty=medium&type=multiple"

MUSIC_MEDIUM_URL = "https://opentdb.com/api.php?amount=20&category=12&difficulty=medium&type=multiple"

CELEBRITIES_HARD_URL = "https://opentdb.com/api.php?amount=20&category=26&difficulty=hard&type=multiple"

GEOGRAPHY_HARD_URL = "https://opentdb.com/api.php?amount=20&category=22&difficulty=hard&type=multiple"


general_api = open(GENERAL_KNOWLEDGE_EASY_URL)
general_read = general_api.read
general_easy = JSON.parse(general_read)

general = []

general_easy["results"].each do |hash|
  question_hash = Hash.new
  hash.each do |key, value|
    if key == "question" || key == "correct_answer"
      question_hash[key] = value
    end
     general << question_hash
  end
end

p general




