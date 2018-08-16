class Diary < ApplicationRecord
    belongs_to :user
  
    validates :title, presence: true, uniqueness: { scope: :user_id }
    validates :description, presence: true
    validates :user, presence: true
  
    def to_s
      name
    end
  end