class Product
  attr_reader :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large
    @medium = medium
    @small = small
    @xsmall = xsmall
  end

  def promedio
    (@large.to_i + @medium.to_i + @small.to_i + @xsmall.to_i) / 4.0
  end

  def nuevo_catalogo (cat)
    cont_nuev_cat = ""
    cat.each do |x|
      cont_nuev_cat += "#{x.name}, #{x.large}, #{x.medium}, #{x.small}\n"
    end
    file = File.open('nuevo_catalogo.txt', 'w')
    file.puts cont_nuev_cat
    file.close
  end


end

products_list = []
data = []

File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end


print products_list[0].nuevo_catalogo(products_list)

# products_list.each do |x|
#   puts "El promedio del producto #{x.name} es #{x.promedio}"
#   #x.promedio
# end
