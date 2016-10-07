class UserSnippet < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :snippet, optional: true
end
