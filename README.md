Práctica 12
==============================================================

Introducción
------------

Considerando el desarrollo de la gema para la representación de matrices (_prácticas anteriores_), se deberá hacer uso de **Gemnasium**, para seguir las dependencias de la gema.
Además se deberá diseñar e implementar un _Lenguaje de Dominio Específico (DSL)_ 

Un posilbe ejemplo del mismo sería el siguiente:

```
ejemplo = MatrixDSL.new("suma") do 
  option "densa" 
  option "console"

  operand [[1,2,3],[4,5,6],[7,8,9]]  
  operand [[1,1,1],[1,1,1],[1,1,1]]  
end
``` 

Documentación
------------

La organización de los ficheros y directorios en esta práctica es la siguiente:

```
/prct11
	Rakefile
	Guardfile
	Gemfile	
	.travis.yml
	.gitignore
	LICENSE.txt
	matrices.gemspec
	/spec
		matrices_spec.rb
		fraccion_spec.rb
	/lib
		matrices.rb
		/matrices
			fraccion.rb
			matriz.rb
			matriz_densa.rb
			matriz_dispersa.rb
			version.rb
			matrizDSL.rb
	/test
		tc_matrices.rb
	/doc
		(... ficheros generados de documentación)
		
```
Componentes
------------

* Sara Báez García
* Jorge Gómez Weyler
