class Book < ApplicationRecord
    validates :title, :author, :page, :publish_year, presence: true
    #validates :author, presence: true
    #validates :title, format: { with: /\A[a-zA-z]+\z/, message: "only allows letters"}
    validates :page, length: { minimum: 2}
    validates :page, length: { maximum: 500}
    validates :price, numericality: true
    has_one_attached :bookImg

end