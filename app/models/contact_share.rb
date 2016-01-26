class ContactShare < ActiveRecord::Base
  validates :user_id, presence: true
  validates :contact_id, presence: true
  validates :user_id, uniqueness: {scope: :contact_id, message: "Already a contact"}

  belongs_to :user

  belongs_to :contact
end
