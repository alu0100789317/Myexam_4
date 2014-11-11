
Node = Struct.new(:value, :next, :prev)

class Lista

	include Enumerable

	attr_accessor :inicio, :final

	def initialize inicio
		@inicio = inicio
		@final = inicio
	end	

	def push_final(nodo)
		if @final == nil
			@final = nodo
			@inicio = nodo
		else			
			@final.next = nodo
			nodo.prev = @final			
			@final = nodo
		end
	end

	def push_inicio(nodo)
		if @inicio == nil
			@inicio = nodo
			@final = nodo
		else
			nodo.next = @inicio
			@inicio.prev = nodo
			@inicio = nodo
		end
	end
	     
	def pop_inicio()
		aux = @inicio
		@inicio = @inicio.next		
		return aux.value
	end

	def pop_final()
		aux = @final
		@final = @final.prev		
		return aux.value
	end

	def each
		aux = @inicio
		while aux != nil  do
  			yield aux.value
			aux = aux.next
		end
	end	

	def getFinalValue()
		return @final.value
	end

	def getInicioValue()
		return @inicio.value
	end

	def getInicioNext()
		return @inicio.next
	end

	def getFinalNext()
		return @final.next
	end

	def getInicioPrev()
		return @inicio.prev
	end

	def getFinalPrev()
		return @final.prev
	end
end
