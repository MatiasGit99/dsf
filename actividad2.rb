cadena = gets().chomp()
estado = [] # se indica si el caracter en la posicion ya ha sido registrado

	for a in (0..cadena.length-1)		# inicialmente el estado de los caracteres sera 0
    	estado[a] = 0
	end

	print "Caracter","\t\t","Aparaciones","\n"

	for i in (0..cadena.length-1)
		cant_aparicion = 0
		if estado[i] == 0 && cadena[i] != " "
		    for j in (0..cadena.length-1)
		        if cadena[i] == cadena[j]
		            cant_aparicion = cant_aparicion + 1
		            estado[j] = 1
		        end
		    end
		    print cadena[i],"\t\t\t",cant_aparicion,"\n"
		end
	end

gets()
