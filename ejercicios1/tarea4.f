        program circulo
            integer,parameter :: seed = 86456125

            call srand(seed)

            open(unit=11,file='data_out_4_mil.csv',status='unknown')
            do i = 1, 1000
                rad = sqrt(rand())
                ang = 2*3.14159*rand()
                write(11,*) rad*cos(ang)-1, ",", rad*sin(ang)+2
            enddo
            close(11)
            
            open(unit=12,file='data_out_4_millon.csv',status='unknown')
            do i = 1, 1000000
                rad = sqrt(rand())
                ang = 2*3.14159*rand()
                write(12,*) rad*cos(ang)-1, ",", rad*sin(ang)+2
            enddo
            close(12)

        end program circulo