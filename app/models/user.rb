class User < ApplicationRecord
    has_many :posts

    validates :name, presence: { message: "名前を入力してください" }
    validates :email, presence: {message:" error "}, uniqueness: {message: "ya existe "}, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: {message:" error "}, length: { minimum: 6, message: "6文字以上で入力してください"}

end