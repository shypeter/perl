#Data type
print("array sample\n");
my @arr = qw(100 2 3 4 5 6 7 8);
my @arr2 = (1,2,3,'a',5);
my $arr3 = [[1,2,3], 'a', 'b', [4,5,6]];
print($#arr2."\n");
for ($i=0 ; $i<=$#arr ; $i++) {
    print($arr[$i]."\n");
}
print("二維 :" . $arr3->[0][1] . ":" . $arr3->[1] . ":" . $arr3->[3][0] . "\n");

print("hash sample\n");
my %hashArr = ('a'=>1 , 2=>'b', '象' => 3);
my %hashArr2 = ('a', 1, 2, 'b');
my $hashArr3 = {"a"=>"A", "b"=>"B"};
print($hashArr{2}."\n");

foreach $value (values %hashArr) {
    print($value."\n");
}
while(($key, $value) = each %hashArr){
    print("$key : $value ");
}

print("二維:" . $hashArr3->{"a"});

print("refrence sample\n");
print(\@arr."\n");
$arrRef = \@arr;
print(@{$arrRef}[0]."\n");

#$scalarRef=\$scalarVar;
#$arrayRef=\@arrayVar;
#$hashRef=\%hashVar;
#$funcRef=\&funcName;
