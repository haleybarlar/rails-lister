class User < ApplicationRecord
has_many :lists
has_many :tasks, through: :lists



def index_json
  {
    email: self.email,
    lists: self.lists,
    tasks: self.tasks


  }
end


end
