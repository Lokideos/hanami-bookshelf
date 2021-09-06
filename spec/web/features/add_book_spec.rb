require 'features_helper'

RSpec.describe 'Add a book' do
  before do
    BookRepository.new.clear
  end

  it 'can create a new book' do
    visit '/books/new'

    within 'form#book-form' do
      fill_in 'Title', with: 'Example Book'
      fill_in 'Author', with: 'Some Author'

      click_button 'Create'
    end

    expect(page).to have_current_path('/books')
    expect(page).to have_content('Example Book')
  end
end
