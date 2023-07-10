class Store < ApplicationRecord
  has_many :employees
  has_many :sales, through: :employees
end
