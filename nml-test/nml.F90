program nml

  implicit none

  type :: my_type
     character(len=10) :: str
     real :: float(3)
     integer :: int
  end type my_type

  character(len=10), dimension(5) :: str_array

  type(my_type) :: the_type

  namelist /the_nml/ &
       the_type

  write(*, *) "Reading namelist :"

  read(*, nml=the_nml)

  write(*, nml=the_nml)

end program nml
