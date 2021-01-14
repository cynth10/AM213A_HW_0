Program Hw_0
! Cynthia Ramirez Hw 0
! Estimate pi
pi_true= acos(-1.0)
print *, "pi_true"
print *, pi_true
print *, ""
n = 0
pi_appx = 0.0
threshold_4 = 1.e-4
threshold_8 = 1.e-8
threshold_12 = 1.e-12
threshold_16 = 1.e-16
DO
    pi_appx = pi_appx + 16.0**(-1*n)*((4.0/(8.0*n+1))-(2.0/(8.0*n+4.0))-(1.0/(8.0*n+5.0))- (1.0/(8.0*n+6.0)))
    n = n + 1
    diff = abs(pi_appx - pi_true)
    
    if (diff < threshold_16) then
       threshold_16 = -1 
       print *, "threshold value = 1.e-16"
       print *, "n"
       print *, n
       print *, "pi_appx"
       print *, pi_appx
       print *, "diff"
       print *, diff
       print *, ""
              
       exit
    else if (diff < threshold_12) then
       threshold_12 = -1 
       print *, "threshold value = 1.e-12"
       print *, "n"
       print *, n
       print *, "pi_appx"
       print *, pi_appx
       print *, "diff"
       print *, diff
       print *, ""
       
    else if (diff < threshold_8) then
       threshold_8 = -1 
       print *, "threshold value = 1.e-8"
       print *, "n"
       print *, n
       print *, "pi_appx"
       print *, pi_appx
       print *, "diff"
       print *, diff
       print *, ""       

    else if (diff < threshold_4) then
    threshold_4 = -1              
       print *, "threshold value = 1.e-4"
       print *, "n"
       print *, n

       print *, "pi_appx"
       print *, pi_appx
       
       print *, "diff"
       print *, diff
       print *, ""
       
    END IF

END DO

End Program Hw_0 
