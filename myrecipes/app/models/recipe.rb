class Recipe < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true, length: { minimum: 5, maximum: 500 }

	belongs_to :chef, optional: true
	validates :chef_id, presence: true
	# testを使うときにバリデーションは必須になっていく
end
