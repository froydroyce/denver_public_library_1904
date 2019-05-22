require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'
require './lib/library'
require 'pry'

class LibraryTest < MiniTest::Test
  def setup
    @dpl = Library.new("Denver Public Library")
  end

  def test_test_library_exists

    assert_instance_of Library, @dpl
  end

  def test_library_has_a_name

    assert_equal "Denver Public Library", @dpl.name
  end

  def test_library_starts_with_no_books

    assert_equal [], @dpl.books
  end

  def test_library_starts_with_no_authors

    assert_equal [], @dpl.authors
  end

  def test_library_can_add_authors_with_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    @dpl.add_author(charlotte_bronte)
    @dpl.add_author(harper_lee)

    assert_equal [charlotte_bronte, harper_lee], @dpl.authors
    books = [jane_eyre, professor, villette, mockingbird]
    binding.pry

    #variables showing all books?
    
    assert_equal [jane_eyre, professor, villette, mockingbird], @dpl.books

  end


end
