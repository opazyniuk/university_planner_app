class Shedule < ApplicationRecord
  has_and_belongs_to_many :disciplines
  belongs_to :user, optional: true
  belongs_to :group, optional: true
end
