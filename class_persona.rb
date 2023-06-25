class Person

    attr_accessor :first_name, :last_name

    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end

end

class Student < Person

    def initialize
        super(first_name, last_name)
    end

    def introduce(first_name, last_name)
        "¡Hola, profesor! Mi nombre es #{first_name} #{last_name}"        
    end
    
    def talk
        "¿Aquí es la clase de programación con Ruby?"
    end

end

class Teacher  < Person

    def initialize

        super(first_name, last_name)
    end

    def introduce(first_name, last_name)
         "¡Hola, alumnos! Mi nombre es #{first_name} #{last_name}"        
    end

    def talk
        "Bienvenidos a la clase de programación con Ruby!"        
    end
    
end

class Parent  < Person

    def initialize
        super(first_name, last_name)
    end

    def introduce(first_name, last_name)
        "Hola, soy uno de los apoderados. Mi nombre es #{first_name} #{last_name}"        
    end

    def talk
        "¿Aquí es la reunión de apoderados?"        
    end

end

alumno_1 = Student.new
puts "#{alumno_1.talk} #{alumno_1.introduce("Juanin", "Juan Harry")}."
puts
profesor_1 = Teacher.new
puts "#{profesor_1.introduce("Juan Carlos", "Bodoque")}. #{profesor_1.talk}"
puts
padre_1 = Parent.new
puts "#{padre_1.introduce("Tulio", "Triviño")}. #{padre_1.talk}"