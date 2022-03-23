! $ fortran-linter shinuamai.f90
! $ Checking shinuamai.f90
! $ gfortran-9 shinuamai.f90

program caesarcipher
  integer :: amount, i
  integer :: shift
  character(len = 100), allocatable :: string(:)
  read *, amount, shift
  ALLOCATE(string(amount))
  read (*, '(A)') string
  do i = 1, amount
  call encrypt(shift, string(i))
  write(*, "(2a)") string(i)
  end do
  contains
    subroutine encrypt(key, text)
      integer, intent(in) :: key
      character(*), intent(inout) :: text
      integer :: i
      do i = 1, len(text)
        select case (text(i:i))
          case ('A':'Z')
          text(i:i) = achar(modulo(iachar(text(i:i)) - 65 - key, 26) + 65)
          case ('a':'z')
          text(i:i) = achar(modulo(iachar(text(i:i)) - 97 - key, 26) + 97)
        end select
      end do
    end subroutine
end program

! cat DATA.lts | ./shinuamai
! A NIGHT AT THE OPERA THE ONCE AND FUTURE KING ARE WONDERS MANY TOLD.
! CARTHAGE MUST BE DESTROYED TO US IN OLDEN STORIES.
! AND SO YOU TOO BRUTUS GREENFIELDS ARE GONE NOW MET A WOMAN AT THE WELL.
! THE DEAD BURY THEIR OWN DEAD AND FORGIVE US OUR DEBTS.
! IN ANCIENT PERSIA THERE WAS A KING THE SECRET OF HEATHER ALE.
! LOVEST THOU ME PETER WHO WANTS TO LIVE FOREVER.
