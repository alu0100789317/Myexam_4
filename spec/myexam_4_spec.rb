
	require 'lib/myexam_4/myexam_4.rb'
	require 'lib/myexam_4/myexam_4.1.rb'

	describe SeleccionSimple do
		before :each do
			@p1 = SeleccionSimple.new("Salida del siguiente codigo: Class Xyz \ndef pots \n@nice \nend \nend", ["#<Xyz:0xa000208>","nil","0", "ninguna de las anteriores"])		
			@p2 = VerdaderoFalso.new("Definicion de un has en Ruby: hash_raro = \n[1, 2, 3] => Object.new(), \nHash.new => :toto")	
			@p3 = SeleccionSimple.new("Salida del siguiente codigo: Class Array \ndef say_hi \nHEY! \nend \nend", ["1","bob","HEY!","ninguna de las anteriores"])
			@p4 = SeleccionSimple.new("Tipo de objeto en: \nclass Objeto \nend", ["Una instancia de la clase","una constante","un objeto","Ninguna de las anteriores"])
			@p5 = VerdaderoFalso.new("Es apropiado que una clase Tablero herede de una clase Juego")

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
			
			end
			it "Comparacion del Size de las preguntas" do
				
			end
			it "Igualdad de las respuestas de Seleccion Simple" do
				
			end
		end
		before :each do
			@node1 = Node.new(1,nil)
			@node2 = Node.new(2,nil)
			@node3 = Node.new(3,nil)
			@node4 = Node.new(4,nil)
			@node5 = Node.new(5,nil)
			@lista = Lista.new(@node1)
			@lista.push_final(@node2)
			@lista.push_final(@node3)
			@lista.push_final(@node4)
			@lista.push_final(@node5)
		end
		describe "Enumerable" do
			it "Maximo" do
				
			end
			it "Minimo" do
				
			end
			it "Valores al cuadrado" do
			
			end
			it "Mostrar" do
		
			end
			it "Contador" do
			
		
			end
		end
	
	end