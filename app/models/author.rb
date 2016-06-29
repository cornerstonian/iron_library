class Author < ActiveRecord::Base

    validates :first_name, presence: true
     validates :last_name, presence: true
     has_many :books, dependent: :destroy


     def full_name
       name = [self.first_name, self.last_name]
       name.join(' ')
     end


    def last_name_first
      name = [self.last_name, self.first_name]
      name.join(', ')
    end


end
