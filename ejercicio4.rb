#                  Ejercicio 4: Constructor con Argumentos

# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash
# con la siguiente estructura:
=begin

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

=end

                                # Solución:

class Dog
  def initialize(nombre: nil, raza: nil, color: nil)
    @nombre = nombre
    @raza = raza
    @color = color
  end

  def ladrar
    puts "#{@nombre} está ladrando!"
  end
end

# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash.
# Luego generar un método llamado ladrar que, mediante interpolación, imprima
#{ }"Beethoven está ladrando!"

dog1 = Dog.new(nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café')
dog1.ladrar
