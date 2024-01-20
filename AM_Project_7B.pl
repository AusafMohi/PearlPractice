#------------------------------------------------------------------------------- 
# Duration:      Midterm Program 
# 
# Program Name:  Ausaf's Pearl Practice  
#                 
# 
# Purpose:       Keeping track and displaying result of an input          
# 
# Author:        Ausaf M.
#  
# 
# Created:       10/10/2022 
# 
#------------------------------------------------------------------------------ 



printf "-------------------------------\n";
printf "| Welcome to the Echo Program |\n";
printf "-------------------------------\n\n";
printf "This program will echo your input.\n\n";
printf "Enter a line of text. Terminate your input by hitting the Enter key.\n";

# variables to keep count of lines, max characters and total size

@inputs = ();
$total = 0;
$max = 0;
$lines = 0;

# do while loop to read from user atleast once

do {
   
    $a = <STDIN>; 
    $l = length($a) - chomp($a);

    # if the input is not empty then continue else skip the process
    
    if($l > 0) {
        if($l > $max){
            $max = $l;
        }
        
        push(@inputs, "->$a<-");
        # count the size of the input, to get total size of the input
        $total = $total + $l;
        # count the no.of lines
        $lines = $lines + 1;
    }
# if length of read input is greater than 1 continue else exit out of the loop
}while( length($a) > 1 );

#print the contents of an array
foreach $line (@inputs) {
    print "$line\n";
}

# print result
printf "\n$lines lines, longest $max characters, $total bytes total.";