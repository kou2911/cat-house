class Castration < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '去勢済み' },
    { id: 2, name: '未去勢' },
  ]

  include ActiveHash::Associations
  has_many :cats
end
