class Post < ApplicationRecord
  
    has_many :post_tags
    has_many :tags, through: :post_tags

    belongs_to :user
    
    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id"

    validates :title, presence: { message: "タイトルを入力してください"}
    validates :content, presence: { message: "本文を入力してください"}
    validates :user_id, presence: { message: "本文を入力してください"}
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "回答数は0以上の値を入力してください" }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "いいね数は0以上の値を入力してください" }
    

    before_save :set_time_now_publish_date
    def set_time_now_publish_date
        self.published_at = Time.zone.now
      end

end