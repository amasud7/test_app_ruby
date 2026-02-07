require 'rails_helper'

RSpec.describe 'Database Seeds', type: :model do
  it 'loads seed file and creates test books' do
    # Clear existing books
    Book.destroy_all
    
    # Load the seed file
    Rails.application.load_seed
    
    # Verify that 3 books were created
    expect(Book.count).to eq(3)
    
    # Verify the specific book titles exist
    expect(Book.exists?(title: 'Test Book 1')).to be true
    expect(Book.exists?(title: 'Test Book 2')).to be true
    expect(Book.exists?(title: 'Test Book 3')).to be true
  end
end
