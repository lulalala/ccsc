class FountainCell < ApplicationCell
  class CategorySection
    attr_accessor :entries
    attr_accessor :category

    def initialize(category)
      self.category = category
      self.entries = []
    end

    def add_entry(entry)
      entries << entry
    end
  end

  def catalogue(periodical)
    @periodical = periodical

    @sections = []

    previous_category = :not_set
    @periodical.entries.order(order: :asc, id: :asc).each do |entry|
      if entry.category == previous_category
        @sections.last.add_entry(entry)
      else
        section = CategorySection.new(entry.category)
        section.add_entry(entry)
        @sections << section
        previous_category = entry.category
      end
    end

    render
  end
end
