program Projeto
	! versao projeto                    0.2.0
	! qnd terminar                      1.
	! qnd tiver devidamente comentado      .1
	! se tiver outras versoes            .n.
	implicit none
! = = = = = D E C L A R A C O E S  &  A T R I B U I C O E S = = = = = = 
	integer, parameter:: ny=10, nx=10, itmax=1000,meio=4
	!Deixei "itmax" igual ao anterior, não sei se precisa aumentar
	! itmax => numero maximo de iteracoes
	! ny => número de passos na direção y 
	! nx => número de passos na direção x 
	integer::i,j
	real,parameter:: ax=-5.,bx=5.,ay=-5.,by=5.,tol=1d-4 !Tamanho do retângulo
	real:: hx, hy,x,y
	real,dimension(0:nx,0:ny):: u, erro
	real:: True_Solution, Ustart, Norm
	hx=(bx-ax)/nx
	hy=(by-ay)/ny
	!OPEN(unit=1, file='data11.dat', status='unknown')
! = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
	!Quadrado de fora V=0
	do j=0, ny
		y=ay+j*hy
		u(0,j) =0.
		u(nx,j)=0.
	end do

	do i=0, nx
		x=ax+i*hx
		u(i,0) =0.
		u(i,ny)=0.
	end do
    
        !Quadrado de dentro V=1
        
        do j=meio, ny-meio
            y=ay+j*hy
            do i=meio, nx-meio
                x=ax+i*hx
                u(i,j)=1.
            end do
        end do
	

        !Startando pra fora do quadrado central de potencial V=1
	do j=1, ny-1
                y=ay+i*hy
		do i=1, ny-1
			x=ax+i*hx
			u(i,j)=Ustart(x,y)
		end do
	end do
	

	call Seidel(ax,ay,nx,ny,hy,hx,itmax,u,meio,tol) ! Se esse seidel precisar de condição 
	                                   ! de parada, eu não sei qual seria

	
	
	do i=0, nx
		x=ax+i*hx
		do j=0, ny
			y=ay+j*hy
			!erro(i,j)= abs(True_Solution(x,y) - u(i,j))
			!print*,itmax , Norm(u, nx, ny)
			!print*, i, j, x, y, u(i, j), erro
			print*, x, y, u(i,j)
			!write(1,*) (x, y, u(i,j))
		end do
	print*, ""
	end do
		!do i=0,nx
		!		write(1,*) (u(i,j),j=0,ny)
		!enddo
end program Projeto

! = = = = = = = = = =  = S U B R O U T I N E = = = = = = = = = = = = = = 
subroutine Seidel(ax,ay,nx,ny,hy,hx,itmax,u,meio,tol)
	
	implicit none
	
	integer:: i,j,k,nx,ny,itmax,meio
	real:: ax,ay,x,y,v,hy,hx,f,g,tol
	real:: u(0:nx,0:ny),uo(0:nx,0:ny),aux(0:nx,0:ny)
	
	itloop:do k=1,itmax
                    uo=u
                    do j=1,meio-1
                            y=ay+j*hy
                            do i=1,nx-1
                                    x=ax+i*hx
                                    v=u(i+1,j)+u(i-1,j)+u(i,j+1)+u(i,j-1)
                                    !u(i,j)=(v-((hx**2)*g(x,y)))/(4-((hx**2)*f(x,y)))
                                    u(i,j)=v/4
                            enddo
                    enddo

                    do j=meio,ny-meio
                            y=ay+j*hy
                            do i=1,meio-1
                                    x=ax+i*hx
                                    v=u(i+1,j)+u(i-1,j)+u(i,j+1)+u(i,j-1)
                                    !u(i,j)=(v-((hx**2)*g(x,y)))/(4-((hx**2)*f(x,y)))
                                    u(i,j)=v/4
                            enddo
                            do i=nx-meio+1,nx-1
                                    x=ax+i*hx
                                    v=u(i+1,j)+u(i-1,j)+u(i,j+1)+u(i,j-1)
                                    !u(i,j)=(v-((hx**2)*g(x,y)))/(4-((hx**2)*f(x,y)))
                                    u(i,j)=v/4
                            enddo
                    enddo
        
                    do j=ny-meio+1,ny-1
                            y=ay+j*hy
                            do i=1,nx-1
                                    x=ax+i*hx
                                    v=u(i+1,j)+u(i-1,j)+u(i,j+1)+u(i,j-1)
                                    !u(i,j)=(v-((hx**2)*g(x,y)))/(4-((hx**2)*f(x,y)))
                                    u(i,j)=v/4
                            enddo
                    enddo
                    aux=abs(u-uo)
                            if(maxval(aux) < tol) then
                                !print*, "============",k,"============"
                                exit itloop
                            endif
	enddo itloop
	
end subroutine Seidel
! = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

! = = = = = = = = = = = = = F U N C O E S  = = = = = = = = = = = = = = =

! Neste caso, para a equação de laplace, as funções f=g=0.

real function f(x,y)
	real:: x, y
	f=0.
end function f

real function g(x,y)
	real:: x, y
	g=0.
end function g

real function Ustart (x,y)
	real:: x, y
	Ustart=1.
end function Ustart

!Para o caso do retângulo a True_Solution não será utilizada... Tudo constante.

real function True_Solution (x,y)
	real:: x, y
	True_Solution = cosh(0.2*x) + cosh(0.2*y)
end function True_Solution

real function Norm(u, nx, ny)
	real:: u(0:nx, 0:ny)
	t=0
	do i=1, nx-1
		do j=1, ny -1
			t=t+u(i,j)**2.
		end do
	end do
	Norm = sqrt(t)
end function Norm
! = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
