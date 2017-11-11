class OrganisedTodo < ApplicationRecord
  belongs_to :todoable, polymorphic: true, optional: true
  belongs_to :todo, optional: true
end
