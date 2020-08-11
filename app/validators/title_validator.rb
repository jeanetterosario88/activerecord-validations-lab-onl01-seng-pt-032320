class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.match?(/Won't Believe/i || /Secret/i || /Top [0-9]*/i || /Guess/i)
          record.errors[:title] << "must be clickbait"
        end
    end


end