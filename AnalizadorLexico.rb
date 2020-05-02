    #Analizador lexico
  

    palabrasReservadas = ["PRINT","LET","LIST","RUN","INPUT","GOTO","IF","THEN","ELSE","STOP","END","EDIT","AUTO","WHILE"]
    def isReservedWord (str)
    	for palabra in str
    		if palabra == str
    			return true
    		end
    	end
    	return false
    end

    def isVarName(str)
        return /[A-Z]+[a-zA-Z]*/.match(str)
    end

    def isSimbol(str)
        return /\(|\)/.match(str)
    end

	def isSimbol(str)
        return /\(|\)/.match(str)
    end
    
    def isNumber(str)
    	return /\d+/.match(str)
    end

    def isOperator(str)
    	return /\*|\/|\+|\-/.match(str)
    end
    File.open('codigo.txt', 'r') do |fichero1|   
        while linea = fichero1.gets  
            puts(linea)
            linea = linea.split(" ")
            for word in linea
            	if (isVarName(word))
            		print "\tIdentificador"
            	elsif (isReservedWord(word))
            		print "\tPalabra reservada"
            	elsif (isNumber(word))
            		print "\tNumero"
            	elsif (isOperator(word))
            		print "\tOperador"
            	elsif (isSimbol(word))
            		print "\tSimbolo"
            	else
            		print "no valido"
            	end
            end
        end 
        puts("#fin de archivo")
    end
