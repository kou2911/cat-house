class Cat < ApplicationRecord
  has_many_attached :images
  belongs_to :user


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age
  belongs_to :place
  belongs_to :sickness
  belongs_to :vaccine
  belongs_to :castration


  validates :images, presence: true
  validates :cat_name, presence: true
  validates :feature, presence: true
  validates :age_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :place_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :vaccine_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :castration_id,numericality: { other_than: 0, message: "can't be blank" }
  validates :sickness_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :contact_address, presence: true


end
