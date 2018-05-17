class Dog
    def initialize(hash)
    @name = hash[:nombre]
    @raza = hash[:raza]
    @color = hash[:color]
  end

  def Ladrar
    puts "#{@name} está ladrando!"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)
perro.Ladrar
