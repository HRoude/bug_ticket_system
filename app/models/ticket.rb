class Ticket < ActiveRecord::Base

	belongs_to :user

	scope :descending, -> { reorder(created_at: :desc) }

	validates :tracker, :severity, :state,	presence: true

	validates :submit_by, presence: true,
												length: { within: 5..30 },
												format: { :with => /[a-zA-Z0-9\s]+/ }

	validates	:title,			presence: true,
												uniqueness: true,
												length: { maximum: 50 }

	validates	:body,			presence: true,
												uniqueness: true,
												length: { maximum: 300 }

end
