class Message < ApplicationRecord
  # contentカラムに対して、空の投稿と文字数を制限するバリデーション
  # validates :カラム名, { presence: true= 空の投稿, length: {maximum: 140} = 文字数max140 }
  validates :content, { presence: true, length: { maximum: 140 } }
end
