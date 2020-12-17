class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title && record.title.match?(/(Won't Believe)|(Secret)|(Top \d+)|(Guess)/)
            record.errors[:title] << "Title is not clickbaity enough"
        end
    end
end
