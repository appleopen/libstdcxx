! Program to test the ANY and ALL intrinsics
program anyall
   implicit none
   logical, dimension(3, 3) :: a
   logical, dimension(3) :: b

   a = .false.
   if (any(a)) call abort
   a(1, 1) = .true.
   a(2, 3) = .true.
   if (.not. any(a)) call abort
   b = any(a, 1)
   if (.not. b(1)) call abort
   if (b(2)) call abort
   if (.not. b(3)) call abort

   a = .true.
   if (.not. all(a)) call abort
   a(1, 1) = .false.
   a(2, 3) = .false.
   if (all(a)) call abort
   b = all(a, 1)
   if (b(1)) call abort
   if (.not. b(2)) call abort
   if (b(3)) call abort
end program
