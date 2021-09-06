require 'features_helper'

RSpec.describe 'Visits home' do
  it 'is successfull' do
    visit '/'

    expect(page).to have_content('Bookshelf')
  end
end
