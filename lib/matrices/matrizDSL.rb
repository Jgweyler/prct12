class MatrixDSL
attr_accessor :operando, :accion
  
  def initialize(acc,&block)
    self.accion=acc
    self.operando=[]
    instance_eval &block
  end

  def to_s
    output = accion
    if (accion== "Suma") 
	    output << "\n#{'=' * accion.size}\n\n"
	    output << " = " 
	    output << (operando[0]+operando[1]).to_s
	    output
   
    elsif (accion== "Resta") 
	    output << "\n#{'=' * accion.size}\n\n"
	    output << " = " 
	    output << (operando[0]-operando[1]).to_s
	    output
   
    elsif (accion== "Producto") 
	    output << "\n#{'=' * accion.size}\n\n"
	    output << " = " 
	    output << (operando[0]*operando[1]).to_s
	    output
    end
    
  end
  
  def option(mod)
	if (mod=="console")
	 puts self
	elsif (mod=="file")
	  fsalida=File.new('pruebas.txt','a+') # la a+ indica que añade a ese fichero (no sobreescribe).
          fsalida.puts self
          fsalida.close
        end
        
  end
  
  def operand(f,c,lista)
      x=Matriz.constructor(f,c,lista)
      self.operando.push x
  end
end
