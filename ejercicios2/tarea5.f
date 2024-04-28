        program congruencias
            integer :: A = 16843009
            integer :: B = 301489861
            integer :: N = 2**32
            integer :: r = 0

            open(unit=11,file='pseudoCongr10.csv',status='unknown')
            do i = 1, 10
                r = mod(A*r + B,N)
                write(11,*) r
            enddo

            open(unit=12,file='pseudoCongr1000.csv',status='unknown')
            do i = 1, 1000
                r = mod(A*r + B,N)
                write(12,*) r
            enddo


        end program congruencias