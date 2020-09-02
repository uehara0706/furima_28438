require 'rails_helper'

RSpec.describe Purchase, type: :model do
  before do
    @item = FactoryBot.build(:purchase)
  end
end
