class Age < ActiveHash::Base
  self.data = [
    { id: 0, name: '-'},
    { id: 1, name: '1才以下' },
    { id: 2, name: '1才' },
    { id: 3, name: '２才' },
    { id: 4, name: '３才' },
    { id: 5, name: '４才' },
    { id: 6, name: '５才' },
    { id: 7, name: '５才以上' }
  ]

  include ActiveHash::Associations
  has_many :cats
  end