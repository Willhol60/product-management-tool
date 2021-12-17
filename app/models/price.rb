class Price < ApplicationRecord
  belongs_to :product

  def label_function
    "#{currency}#{value}"
  end
end
