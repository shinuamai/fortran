! $ fortran-linter shinuamai.f90
! $ Checking shinuamai.f90
! $ gfortran-9 shinuamai.f90

program shinuamai
    implicit none
    integer :: number1 = 14788, number2 = 8722
    integer :: result
    result = number1 + number2
    Print*, "the result of number1 and number2 is: " , result
end program shinuamai

! cat DATA.lts | ./shinuamai
! 23510