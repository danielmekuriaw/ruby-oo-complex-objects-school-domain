# code here!

class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if self.roster[grade] == nil
            self.roster[grade] = []
            self.roster[grade] << student_name
        else
            self.roster[grade] << student_name
        end
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each{|key, value|
            value.sort!
        }
    end

end



