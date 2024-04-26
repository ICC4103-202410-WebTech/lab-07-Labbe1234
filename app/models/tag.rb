class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags

    validates :name, presence: {message: "a"}, uniqueness: {message: "b"}
end