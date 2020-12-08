class Todo < ApplicationRecord
  belongs_to :project

  validates :text, presence: true
  validates :isCompleted, inclusion: { in: [true, false] }
end
