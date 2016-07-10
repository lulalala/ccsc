module CategoriesHelper
  def categories_as_select_options(scope)
    array = []
    Category.where(scope: scope, parent_id: nil).each do |category|
      array << [category.name, category.id]
      category.children.each do |child|
        array << ["> #{child.name}", child.id]
      end
    end
    array
  end
end