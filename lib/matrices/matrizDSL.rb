class MatrixDSL

attr_accessor :operando, :accion
  
  def initialize(acc,&block)
    self.accion=acc          #Determina la accion que realizará.
    self.operando=[]	     #Array que almacenará los operandos.
    instance_eval &block
  end

  def to_s
    output = accion
    if (accion== "Suma") 
	    output << "\n#{'=' * accion.size}\n\n"
	    output << " = " 
	    output << (operando[0]+operando[1]).to_s   #Mostrará el resultado de la suma de ambos operandos.
	    output
   
    elsif (accion== "Resta") 
	    output << "\n#{'=' * accion.size}\n\n"
	    output << " = " 
	    output << (operando[0]-operando[1]).to_s   #Mostrará el resultado de la resta de ambos operandos.
	    output
   
    elsif (accion== "Producto") 
	    output << "\n#{'=' * accion.size}\n\n"
	    output << " = " 
	    output << (operando[0]*operando[1]).to_s   #Mostrará el resultado de la resta de ambos operandos.
	    output
    end 
  end
  
  #método para la fácil comprobación en las expectativas
  #solo con el resultado de la operacion
  def resultado         
	output = accion
    if (accion== "Suma") 
		(operando[0]+operando[1]).to_s   
    elsif (accion== "Resta") 
	    (operando[0]-operando[1]).to_s
    elsif (accion== "Producto") 
		(operando[0]*operando[1]).to_s
    end
   end
  
  def option(mod)
	if (mod=="console")
	 puts self                            #Muestra por pantalla el resultado.
	elsif (mod=="file")
	  fsalida=File.new('pruebas.txt','a+') # la a+ indica que añade a ese fichero (sin sobreescribir) el resultado.
          fsalida.puts self
          fsalida.close
    end
  end
  
  def operand(f,c,lista)
      x=Matriz.constructor(f,c,lista)      #Introduce un operando (de tipo matriz) dentro del array "operando".
      self.operando.push x
  end
end
