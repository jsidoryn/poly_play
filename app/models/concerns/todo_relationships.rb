module TodoRelationships
  extend ActiveSupport::Concern

  included do
    has_many :organised_todos, as: :todoable, dependent: :destroy
    has_many :todos, through: :organised_todos
    belongs_to :user
  end
end
