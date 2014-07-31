$word = String.new
$lengthmax = 10

$letters = "abcdefghijklmnopqrstuvwxyz"
$size = $letters.length;

#god file created here
$time = Time.new
$filename = $time.to_i.to_s + ".html"
$neverstop=0
while $neverstop != 1
	$filecount = 0;
	while $filecount < 10
		$f = File.new($filename,  "w+")
		$x = 0
		# $f.write($word.to_s+ " ")
		$wordcount = 0;
		$firstWord = '';
		$bigString = '';
		while $wordcount < 100000 do	
			$wordlength = rand($lengthmax);
			$newletters = 0
			$word = String.new
			while $wordlength>$newletters do
		 		$word[$newletters] = $letters[rand($size)]
		 		$newletters = $newletters+1;
			end
			#puts $word.to_s
			$bigString += "<a href='"+ "http://www."+$word.to_s+".com/" + "''>" + $word.to_s +  "</a>" +" ";
			$wordcount += 1;
		end
		# $f.write("\n<a href=''>"+firstWord+"</a>")

		#setup new filename
		$time = Time.new
		$filename = $time.to_i.to_s + ".html"
		$filecount += 1;
		$f.write($bigString + "<br><br><center><a href="+ "'./" +$filename + "'" + ">"+"NEXT" + "</a></center></br>");
	end

	system 'git add --all'
	system 'git commit -a -m "new filez"'
	system 'git pull origin master'
	system 'git push origin master'
end