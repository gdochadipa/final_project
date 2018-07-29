class Dispositon < ApplicationRecord
    belongs_to :user

    validates :dispocode, :inmail, :to, :comment, :status, :user_id, presence: true
end
