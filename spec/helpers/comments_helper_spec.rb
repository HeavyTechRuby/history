require 'rails_helper'

RSpec.describe CommentsHelper, type: :helper do
  describe '#localized_time' do
    let(:time) { Time.new(2023, 6, 1, 14, 30) }

    context 'when using default format' do
      it 'returns the time in the default format' do
        expect(helper.localized_time(time)).to eq('01.06.2023 14:30')
      end
    end

    context 'when using a custom format' do
      it 'returns the time with custom format' do
        custom_format = "%Y-%m-%d %H:%M:%S"
        expect(helper.localized_time(time, format: custom_format)).to eq('2023-06-01 14:30:00')
      end
    end

    context 'when using different locales' do
      it 'returns the time with custom locale format' do
        I18n.with_locale(:en) do
          custom_format = "%Y-%m-%d %I:%M %p"
          expect(helper.localized_time(time, format: custom_format)).to eq('2023-06-01 02:30 PM')
        end
      end
    end

    context 'with nil time' do
      it 'returns nil' do
        expect(helper.localized_time(nil)).to be_nil
      end
    end
  end
end
