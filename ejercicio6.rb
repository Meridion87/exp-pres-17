class Product
  attr_reader :name
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
end

products_list = []
data = []

File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end
#puts products_list

products_list.each do |x|
  puts "El promedio del producto #{x.name} es #{x.promedio}"
  #x.promedio
end
