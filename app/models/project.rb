class Project < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_many :project_status_histories, dependent: :destroy

  validates :name, :status, presence: true

  before_update :save_status_history

  enum status: %i[backlog developing testing finished]

  private

  def save_status_history
    return unless status_changed?

    ProjectStatusHistory.create(project_id: id, user_id: user.id, status: status)
  end
end
