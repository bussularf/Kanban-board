class Card < ApplicationRecord
  belongs_to :kanban_column
  belongs_to :user
end
