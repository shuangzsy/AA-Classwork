require 'sqlite3'
require 'singleton'

class QuestionsDatabase < SQLite3::Database
    include Singleton

    def initialize
        super('questions.db')
        self.type_translation = true
        self.results_as_hash = true
    end
end

class Users

    attr_accessor :fname, :lname

    def self.all
       data = QuestionsDatabase.instance.execut e("SELECT * FROM users")
        data.map { |datum| Users.new(datum) }
    end

    def self.find_by_id(id)
        user_id = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT
                *
            FROM
                users
            WHERE
                id = ?
        SQL
        return nil unless user_id.length > 0
        user_id.map{|ele| Users.new(ele)}

    end

    def self.find_by_name(fname, lname)
        #raise error
        user = QuestionsDatabase.instance.execute(<<-SQL, fname, lname)
            SELECT
                *
            FROM
                users
            WHERE
                fname = ? AND lname = ?
        SQL
        return nil unless user.length > 0
        user.map{|ele| Users.new(ele)}
    end

     def initialize(options)
        @id = options['id']
        @fname = options['fname']
        @lname = options['lname']
    end

end



