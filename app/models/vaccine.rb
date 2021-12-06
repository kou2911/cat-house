class Vaccine < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '摂取済み' },
    { id: 2, name: '未摂取' },
  ]

  include ActiveHash::Associations
  has_many :cats
end
