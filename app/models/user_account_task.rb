class UserAccountTask < ApplicationRecord
  belongs_to :task
  belongs_to :user_account
end
