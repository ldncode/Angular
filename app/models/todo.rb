class Todo < ApplicationRecord
  belongs_to :project

  validates :text, presence: true
end
