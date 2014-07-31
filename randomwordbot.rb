$word = String.new
$lengthmax = 10

$letters = "abcdefghijklmnopqrstuvwxyz"
$size = $letters.length;

$f = File.new("newfile.html",  "w+")

$x = 0
while File.stat("newfile.html").size < 12000000 do
	$wordlength = rand($lengthmax);
	$newletters = 0
	$word = String.new
	while $wordlength>$newletters do
	 	$word[$newletters] = $letters[rand($size)]
	 	$newletters = $newletters+1;
	end
	$f.write($word.to_s + " ")
	
end