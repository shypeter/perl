#Data type
print("var sample\n");
$var = 10;
$var2 = "abc";
print("$var:$var2 \n\n");

print("array sample\n");
my @arr = qw(100 2 3 4 5 6 7 8);
my @arr2 = (1,2,3,'a',5);
my $arr3 = [[1,2,3], 'a', 'b', [4,5,6]];
$length = scalar(@arr2);
print("arr2 last index is $#arr2, arr length is $length\n");
for ($i=0 ; $i<=$#arr ; $i++) {
    print($arr[$i].",");
}
print("\n");
foreach $i (@arr) {
    print("$i, ");
}
print("\n");
print("二維 :" . $arr3->[0][1] . ":" . $arr3->[1] . ":" . $arr3->[3][0] . "\n\n");

print("hash sample\n");
my %hashArr = ('a'=>1 , 2=>'b', '象' => 3);
my %hashArr2 = ('a', 1, 2, 'b');
my $hashArr3 = {"a"=>"A", "b"=>"B"};
print($hashArr{2}."\n");

foreach $value (values %hashArr) {
    print($value . ", ");
}
print("\n");

while(($key, $value) = each %hashArr){
    print("$key : $value ");
}
print("\n");


print("二維:" . $hashArr3->{"a"} . "\n\n");
print("refrence sample\n");
print(\$var . "\n");
$varRef = \$var2;
print($$varRef . "\n");

print(\@arr . "\n");
$arrRef = \@arr;
$length = scalar(@{$arrRef});
print(@{$arrRef}[0] . "\n");
print(@$arrRef[0] . "\n");
if (ref($arrRef) eq "ARRAY") {
    print("ref arr length :$length \n");
}


print(\%hashArr . "\n");
$hashRef = \%hashArr;
print($hashRef->{'a'} . "\n");
foreach $key (keys $hashRef) {
    print("$key: $hashRef{$value}, ");
}
while(($key, $value) = each $hashRef){
    print("$key : $value ");
}


# $scalarRef = \$scalarVar;
# $arrayRef = \@arrayVar;
# $hashRef = \%hashVar;
# $funcRef = \&funcName;

#  print $$scalarRef;
#  print "@$arrayRef";
#  print $hashRef->{$key};
#  &$funcRef;

#Control Statements
print("\n\nControl Statements\n\n");
foreach $i (@arr) {
    print("$i, ");
}
print("\n");

#io
print("\nIO\n");
chomp($input = <STDIN>);
print($input."\n");
$cmd = "ls -la";
print $cmd; #print value
print "$cmd";
print '$cmd';
print `$cmd`;

#function
print("\n\nfunction test\n");
my %commands = (
    "happy" => \&joy,
    "sad"   => \&sullen,
    "done"  => sub { die "See ya!" },
    "mad"   => \&angry,
);

print "How are you? ";
chomp($string = <STDIN>);
if ($commands{$string}) {
    $commands{$string}->();
} else {
    print "No such command: $string\n";
} 
sub joy {
    print("good");
}
sub sullen {
    print("it will be ok");
}
sub angry {
    print("come down");
}
print("\n");