
	require 'lib/myexam_4/myexam_4.rb'
	require 'lib/myexam_4/myexam_4.1.rb'

describe SeleccionSimple do
	before :each do
		@p1 = SeleccionSimple.new("Salida del siguiente codigo: Class Xyz \ndef pots \n@nice \nend \nend", ["#<Xyz:0xa000208>","nil","0", "ninguna de las anteriores"],1)		
		@p2 = VerdaderoFalso.new("Definicion de un has en Ruby: hash_raro = \n[1, 2, 3] => Object.new(), \nHash.new => :toto",2)	
		@p3 = SeleccionSimple.new("Salida del siguiente codigo: Class Array \ndef say_hi \nHEY! \nend \nend", ["1","bob","HEY!","ninguna de las anteriores"],3)
		@p4 = SeleccionSimple.new("Tipo de objeto en: \nclass Objeto \nend", ["Una instancia de la clase","una constante","un objeto","Ninguna de las anteriores"],4)
		@p5 = VerdaderoFalso.new("Es apropiado que una clase Tablero herede de una clase Juego",5)

		#pregunta1=65
		#pregunta2=88
		#pregunta3=68
		#pregunta4=37
		#pregunta5=60

		#respuestas1_0=16
		#respuestas1_1=3
		#respuestas1_2=1
		#respuestas1_3=25

		#respuestas3_0=1
		#respuestas3_1=3
		#respuestas3_2=4
		#respuestas3_3=25

		#respuestas4_0=25
		#respuestas4_1=13
		#respuestas4_2=9
		#respuestas4_3=25
	end

	describe "Comparable" do

		it "Igualdad de preguntas" do
			expect(@p1 == @p2).to eq(false)
			expect(@p4 == @p5).to eq(false)
			expect(@p3 == @p3).to eq(true)
			expect(@p1 == @p1).to eq(true)
		end
		it "Comparacion del Size de las preguntas" do
			expect(@p3 < @p5).to eq(true)
			expect(@p2 > @p1).to eq(true)
			expect(@p3 <= @p2).to eq(false)
			expect(@p5 >= @p1).to eq(true)
			expect(@p3.between?(@p1, @p2)).to eq(false)
		end
		it "Igualdad de las respuestas de Seleccion Simple" do
			expect(@p1.respuestas[1] == @p3.respuestas[1]).to eq(false)
			expect(@p3.respuestas[2] == @p4.respuestas[2]).to eq(false)
			expect(@p4.respuestas[3] == @p1.respuestas[3]).to eq(false)
			expect(@p1.respuestas[4] == @p3.respuestas[4]).to eq(true)
		end
	end
	before :each do
		@node1 = Node.new(@p1,nil)
		@node2 = Node.new(@p2,nil)
		@node3 = Node.new(@p3,nil)
		@node4 = Node.new(@p4,nil)
		@node5 = Node.new(@p5,nil)
		@lista = Lista.new(@node1)
		@lista.push_final(@node2)
		@lista.push_final(@node3)
		@lista.push_final(@node4)
		@lista.push_final(@node5)
	end
	describe "Enumerable" do
		it "Maximo" do
			expect(@lista.max).to eq(@p5)
		end
		it "Minimo" do
			expect(@lista.min).to eq(@p1)
		end
		    it "Funcion include" do
    			expect(@lista.include?@p5).to eq(true)
    			expect(@lista.include?@p4).to eq(true)
		    	expect(@lista.include?@p3).to eq(true)
		    	expect(@lista.include?@p2).to eq(true)
		    	expect(@lista.include?@p1).to eq(true) 	   	
    		end
		it "Mostrar" do
			expect(@lista.each{|i|}).to eq(@lista.print)
		end
		it "Contador" do
			expect(@lista.count).to eq(5)
		end
	end
	
end
