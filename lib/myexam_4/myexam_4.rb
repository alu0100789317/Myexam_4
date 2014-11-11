class Preguntas

	include Comparable
	
	attr_accessor :pregunta

	def initialize pregunta
 		@pregunta = pregunta
	end
end

class SeleccionSimple < Preguntas

	attr_accessor :respuestas

	def initialize pregunta, respuestas
 		super(pregunta)
		@respuestas = respuestas
	end
	
	def <=>(other)
		pregunta.size <=> other.pregunta.size
	end

	def ==(other)
		pregunta == other.pregunta
	end
	
	def to_s
		"#{@pregunta}\n a:#{@respuestas[0]}\n b:#{@respuestas[1]}\n c:#{@respuestas[2]}\n d:#{@respuestas[3]}"
	end 
end

class VerdaderoFalso < Preguntas

	attr_accessor :respuestas
	
	def initialize pregunta
		super(pregunta)
		@respuestas = ["Verdadero","Falso"]
	end

	def <=>(other)
		pregunta.size <=> other.pregunta.size
	end	
	
	def to_s
		"#{@pregunta}\n a: Verdadero \n b: Falso"
	end
end
