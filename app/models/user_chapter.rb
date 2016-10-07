class UserChapter < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :chapter, optional: true
end
