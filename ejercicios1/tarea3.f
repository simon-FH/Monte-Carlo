        program rectangulo
            integer,parameter :: seed = 86456125

            call srand(seed)

            open(unit=11,file='data_out_3_mil.csv',status='unknown')
            do i = 1, 1000
                write(11,*) 2*rand()-1, ",", 2*rand()+4
            enddo
            close(11)
            
            open(unit=12,file='data_out_3_millon.csv',status='unknown')
            do i = 1, 1000000
                write(12,*) 2*rand()-1, ",", 2*rand()+4
            enddo
            close(12)

        end program rectangulo