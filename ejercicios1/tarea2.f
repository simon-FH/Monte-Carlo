        program test_rand
            integer,parameter :: seed = 86456125

            call srand(seed)
            
c Un dado lanzado mil veces
            open(unit=11,file='data_out_undado.csv',status='unknown')
            do i = 1, 1000
                write(11,*) int(6*rand()+1)
            enddo
            close(11)

c Dos dados lanzados mil veces y sumados
            open(unit=10,file='data_out_mil.csv',status='unknown')
            do i = 1, 1000
                write(10,*) int(6*rand()+1)+int(6*rand()+1)
            enddo
            close(10)

c Dos dados lanzados un millón de veces y sumados
            open(unit=9,file='data_out_millon.csv',status='unknown')
            do i = 1, 1000000
                write(9,*) int(6*rand()+1)+int(6*rand()+1)
            enddo
            close(9)

        end program test_rand