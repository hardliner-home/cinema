require 'rails_helper'

RSpec.describe Rating, type: :model do
  describe 'associations' do
    it { should belong_to(:movie).required }
    it { should belong_to(:user).optional }
  end

  describe 'validations' do
    it { should validate_presence_of(:mark) }
    it { should validate_numericality_of(:mark).only_integer.is_greater_than_or_equal_to(1).is_less_than_or_equal_to(5) }
  end
end
