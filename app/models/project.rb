class Project < ApplicationRecord
  has_many :tasks
  belong_to :user
end
