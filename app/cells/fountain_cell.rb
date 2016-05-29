class FountainCell < Cell::Rails
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

  def catalogue(fountain)
    @fountain = fountain

    @sections = []

    previous_category = :not_set
    @fountain.fountain_entries.order(order: :asc, id: :asc).each do |entry|
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
