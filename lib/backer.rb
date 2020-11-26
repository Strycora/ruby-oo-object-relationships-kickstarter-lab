require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)

    end

    def backed_projects
        projects_i_back = ProjectBacker.all.select do |whole_shebang|
            #binding.pry
            whole_shebang.backer == self
        end

        projects_i_back.map do |whole_shebang|
            whole_shebang.project
        end
           
    end


end