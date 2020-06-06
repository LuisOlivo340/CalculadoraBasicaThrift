$:.push('gen-rb')
require 'thrift'
require 'calculadora_basica'

socket = Thrift::Socket.new('localhost', 7130)
protocol = Thrift::BinaryProtocol.new(socket)
client = CalculadoraBasica::Client.new(protocol)
socket.open()
seleccion = 0
while seleccion != -1
    #mandar menu
    puts "---------------Bienvenido al sistema de calculadora basica--------------------"
	puts "Escribe 1 para sumar dos numeros\nEscribe 2 para restar dos numeros\nEscribe 3 para multiplicar dos numeros"
	puts "Escribe 4 para dividir dos numeros\nEscribe 10 Para salir"
    #
    STDOUT.flush()
    seleccion = Integer(STDIN.gets())
    case seleccion
    when 1
        print "Asigna un valor a el numero 1: "
		STDOUT.flush()
		n1 = Integer(STDIN.gets())
		print "Asigna un valor a el numero 2: "
		STDOUT.flush()
        n2 = Integer(STDIN.gets())
        puts " "
        resultado=client.Sumar(n1, n2)
		puts "El resultado de la suma es: #{resultado}"
    when 2
        print "Asigna un valor a el numero 1: "
		STDOUT.flush()
		n1 = Integer(STDIN.gets())
		print "Asigna un valor a el numero 2: "
		STDOUT.flush()
        n2 = Integer(STDIN.gets())
        puts " "
		resultado=client.Restar(n1, n2)
		puts "El resultado de la resta es: #{resultado}"
    when 3
        print "Asigna un valor a el numero 1: "
		STDOUT.flush()
		n1 = Integer(STDIN.gets())
		print "Asigna un valor a el numero 2: "
		STDOUT.flush()
        n2 = Integer(STDIN.gets())
        puts " "
		resultado=client.Multiplicar(n1, n2)
		puts "El resultado de la multiplicacion es: #{resultado}"
    when 4
        print "Asigna un valor a el numero 1: "
		STDOUT.flush()
		n1 = Integer(STDIN.gets())
		print "Asigna un valor a el numero 2: "
		STDOUT.flush()
        n2 = Integer(STDIN.gets())
        puts " "
        resultado=client.Dividir(n1, n2)
        if resultado ==-1
            puts "Syntax error"
        else
            puts "El resultado de la suma es: #{resultado}"
        end
    when 10
        "Gracias por usar, hasta luego"
    else
        puts "Tienes que proporcionar un numero valido un numero valido"
    end
    puts " "
end
socket.close()