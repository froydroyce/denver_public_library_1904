class Book
  attr_reader :author,
              :author_first_name,
              :author_last_name,
              :title,
              :publication_date,
              :publication_year

  def initialize(specs)
    @author_first_name = specs[:author_first_name]
    @author_last_name = specs[:author_last_name]
    @title = specs[:title]
    @publication_date = specs[:publication_date]
    @author = @author_first_name + " " + @author_last_name
    @publication_year = @publication_date[-4..-1]
  end
end
