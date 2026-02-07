require "test_helper"

class SeedTest < ActiveSupport::TestCase
  test "seed file creates test books in test database" do
    # Load the seed file
    Rails.application.load_seed
    
    # Verify that 3 test books were created
    assert_equal 3, Book.count, "Expected 3 books to be created from seeds"
    
    # Verify the specific book titles exist
    assert Book.exists?(title: "Test Book 1"), "Test Book 1 should exist"
    assert Book.exists?(title: "Test Book 2"), "Test Book 2 should exist"
    assert Book.exists?(title: "Test Book 3"), "Test Book 3 should exist"
  end
end
