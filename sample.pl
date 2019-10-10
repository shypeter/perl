my @arr = qw(100 2 3 4 5 6 7 8);
my @arr2 = (1,2,3,'a',5);

print($#arr2."\n");
for ($i=0 ; $i<=$#arr ; $i++) {
    print($arr[$i]."\n");
}
my %hashArr = ('a'=>1 , 2=>'b', '象' => 3);
my %hashArr2 = ('a', 1, 2, 'b');
print($hashArr{2}."\n");
print("fox\n");

foreach $value (values %hashArr) {
    print($value."\n");
}
while(($key, $value) = each %hashArr){
    print("$key : $value ");
}
