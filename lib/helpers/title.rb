module TitleHelper
  def title
    title = []
    title << @item[:content_for_title] if @item[:content_for_title]
    title << @item[:title] if @item[:title]
    title << ["Venta de Láminas y Libros"]
    title.join(' - ')
  end
end
