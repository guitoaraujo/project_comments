class Project < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy

  enum status: %i[backlog developing testing finished]

  validates :name, :status, presence: true
end
