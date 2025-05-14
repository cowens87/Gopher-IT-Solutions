class Ticket < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  
  enum :status, { open: 0, in_progress: 1, closed: 2 }

  scope :sort_by_newest, -> { order(created_at: :desc) }
end
