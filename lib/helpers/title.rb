module TitleHelper
  def title
    title = []
    title << @item[:content_for_title] if @item[:content_for_title]
    title << @item[:title] if @item[:title]
    title << ["Venta de Láminas y Libros"]
    format_meta(title.join(' - '))
  end

  def format_meta(s)
    if s
      s.gsub(/\n/,'').strip
    else
      ""
    end
  end

  def meta_keywords
    format_meta(@item[:content_for_keywords] || @item[:keywords])
  end

  def meta_description
    format_meta(@item[:content_for_description] || @item[:description])
  end
end
