$word = String.new
$lengthmax = 10

$letters = "abcdefghijklmnopqrstuvwxyz"
$size = $letters.length;

print "starting"

#god file created here
$time = Time.new
$filename = $time.to_i.to_s + ".html"
$neverstop=0
while $neverstop != 1
	$filecount = 0;
	while $filecount < 1000
		$f = File.new("./data/"+$filename,  "w+")
		$x = 0
		# $f.write($word.to_s+ " ")
		$wordcount = 0;
		$firstWord = '';
		$bigString = '';
		while $wordcount < 1000 do	
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

		$adstring = '<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- randomwords -->
						<ins class="adsbygoogle"
     					style="display:inline-block;width:728px;height:90px"
     					data-ad-client="ca-pub-2175029674789427"
     					data-ad-slot="6388827040"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
					<br/>';
		$f.write($adstring + $bigString + "<br><br><center><a href="+ "'./" +$filename + "'" + ">"+"NEXT" + "</a></center></br>");
	end

	system 'git add --all'
	system 'git commit -a -m "new filez"'
	system 'git pull origin master'
	system 'git push origin master'
end