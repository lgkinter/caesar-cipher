def caesar_cipher(str, key)
	str_arr = str.split(//)
	rev_str_arr = []
	i=0
	str_arr.each do |letter|
		if (65..90) === letter.ord
			rev_str_arr[i] = ((letter.ord - 65 + key) % 26 + 65).chr
		elsif (97..122) === letter.ord
			rev_str_arr[i] = ((letter.ord - 97 + key) % 26 + 97).chr
		else
			rev_str_arr[i] = letter
		end
		i += 1
	end
	rev_str_arr.join
end

caesar_cipher("What a string!", 5)
