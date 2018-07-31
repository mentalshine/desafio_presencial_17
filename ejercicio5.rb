#                Ejercicio 5: Traductor entero a código Morse

# Se tiene la clase Morseable que contiene un método de instancia generate_hash
# los datos de traducción de número entero a código morse.

=begin

class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    # Esto es una aberración y debe ser refactorizado!
    h = '-----' if number == 0
    h = '.----' if number == 1
    h = '..---' if number == 2
    h = '...--' if number == 3
    h = '....-' if number == 4
    h = '.....' if number == 5
    h = '-....' if number == 6
    h = '--...' if number == 7
    h = '---..' if number == 8
    h = '----.' if number == 9
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse

Se pide:

Refactorizar el código del método de instancia generate_hash para que los datos
estén contenidos en un hash donde los números serán las claves y la traducción
los valores. El método generate_hash además debe retornar la traducción del número
recibido como argumento.
=end

                                # Solución:

  class Morseable
    attr_accessor :number
    def initialize(number)
      @number = number
    end

    def generate_hash(number)
      # Esto es una aberración y debe ser refactorizado!
      h = { 0 => 'Cero ( )' } if number == 0
      h = { 1 => 'Uno (.)' } if number == 1
      h = { 2 => 'Dos (..)' } if number == 2
      h = { 3 => 'Tres (...)' } if number == 3
      h = { 4 => 'Cuatro (....)' } if number == 4
      h = { 5 => 'Cinco (.....)' } if number == 5
      h = { 6 => 'Seis (......)' } if number == 6
      h = { 7 => 'Siete (.......)' } if number == 7
      h = { 8 => 'Ocho (........)' } if number == 8
      h = { 9 => 'Nueve (.........)' } if number == 9

      h.each { |key, value| puts value }
    end

    def to_morse
      generate_hash(@number)
    end
  end

  m = Morseable.new(9)
  print m.to_morse
