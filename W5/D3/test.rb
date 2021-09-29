require 'sqlite3'
require 'singleton'

class QuestionsDatabase < sqlite3::Database
    include singleton

    def initialize
        super('questions.db')
        self.type_translation = true
        self.results_as_hash = true
    end
end