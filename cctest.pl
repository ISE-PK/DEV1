
use strict;
use Win32::Console::ANSI;
use Term::ANSIScreen qw/:color :cursor :screen/;



# $CONSOLE->Size(80, 25); # force a console size



#print color('cyan on_black');
#system ('cls');


my $_Form_SearchPattern="C:/*.*";
my @_PDF_Form_Files = <${_Form_SearchPattern}>;

my %_R1=("1",1,"2",2,"3",3);
print "\n 1) Option A \n 2) Option B";

printf "\n[%02d] - %8s - (%8s)","1",colored(['BLACK on_green'], 'red on black.'),"Get threatdata file from UTM";


for (my $i=1;$i<56;$i++)
{
    my $clr ="";
    if ($i>10) {$clr ="RED on_black"} else {$clr="GREEN on_black"}
    
    #print colored([$clr], sprintf ("\n [%4s] Option ",$i));
}

print "\n";
format VIEW1 =
   === MUNIN  Blacklist ===
   /CC    /Asn   /IP
   @<<<<  @<<<<< @>>>>>>>>>>>>>
   $_R1{1}, $_R1{3}, $_R1{2}
   ^>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ~~
   shift(@_PDF_Form_Files)
.


$~ = 'VIEW1';
write ;




