        program suma2num
            real num1, num2, suma

c Pide dos numeros, los suma y los devuelve.

            write (*,*) 'Escriba el primer numero:'
            read  (*,*) num1
            write (*,*) 'Escriba el segundo numero:'
            read  (*,*) num2
            suma = num1 + num2
            write (*,*) 'Suma = ', suma

            stop
            end