class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backed = ProjectBacker.all.select do |pb_object|
            pb_object.project == self
        end

        backed.map do |pb_object|
            pb_object.backer
        end
    end
end