class UserBook < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :book, optional: true
end
