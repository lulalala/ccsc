class PeriodicalEntry < ApplicationRecord
  belongs_to :periodical
  has_one :post, as: :owner

  accepts_nested_attributes_for :post

  delegate :title, :body, :author, to: :post

  validates :periodical_id, presence: true
end
