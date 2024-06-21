require 'rails_helper'

RSpec.describe Location, type: :model do
  it { is_expected.to validate_presence_of(:address) }
  it { is_expected.to validate_length_of(:address).is_at_least(10) }
end
