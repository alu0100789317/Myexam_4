class Preguntas

	include Comparable
	
	attr_accessor :pregunta

	def initialize pregunta
 		@pregunta = pregunta
	end
end

class SeleccionSimple < Preguntas

	attr_accessor :respuestas, :nivel

	def initialize pregunta, respuestas, nivel
 		super(pregunta)
		@respuestas = respuestas
		@nivel = nivel
	end
	
	def <=>(other)
		nivel <=> other.nivel
	end

	def ==(other)
		pregunta == other.pregunta
	end
	
	def to_s
		"#{@pregunta}\n a:#{@respuestas[0]}\n b:#{@respuestas[1]}\n c:#{@respuestas[2]}\n d:#{@respuestas[3]}"
	end 
end

class VerdaderoFalso < Preguntas

	attr_accessor :respuestas, :nivel
	
	def initialize pregunta, nivel
		super(pregunta)
		@respuestas = ["Verdadero","Falso"]
		@nivel = nivel
	end

	def <=>(other)
		nivel <=> other.nivel
	end	
	
	def to_s
		"#{@pregunta}\n a: Verdadero \n b: Falso"
	end
end
