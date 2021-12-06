class Sickness < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '病気なし' },
    { id: 2, name: '病気あり' },
  ]

  include ActiveHash::Associations
  has_many :cats
end
