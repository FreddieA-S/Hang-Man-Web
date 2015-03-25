
def colorize(text, color_code)
  "\e[#{color_code}m#{text}\e[0m"
end
def red(text); colorize(text, 31); end
def green(text); colorize(text, 32); end
def questions_underlined(text); colorize(text, 4); end
def questions_color(text); colorize(text, 37); end
def array_color(text); colorize(text, 34); end
letter_used = []
life = 9
count = 0
puts 'You have three lives, every question you get wrong you loose a life but, every question you get correct you will gain +1 lives'
until count == 1
	puts questions_color ('What is, One plus One?')
	a = gets.chomp
	if a == '2'
		count = count + 1
		puts green ('Well done')
		puts count
	else
		puts red ('The answer is 2')
	end
end
count = 0
puts green('You have three lives, every question you get wrong you loose a life but, every question you get correct you will gain +1 lives')
puts questions_color ('What difficulty do you want to play')
puts questions_underlined ('1- Easy')
puts questions_underlined ('2- Medium')
puts questions_underlined ('3- Hard, Icludes type of protein.')
difficulty_a = gets.chomp
if difficulty_a == '1'
	easy_name_list = ['Spineless', 'Pastness', 'Deliberateness', 'Frame', 'Spencer']
end
if difficulty_a == '2'
	easy_name_list = ['Spineless', 'Pastness', 'Deliberateness', 'Frame', 'Spencer', 'Glider','Freeze','Dry','Horse','House','Many','Anticipative','Adapt','large','Supplementation',]
end
if difficulty_a == '3'
	easy_name_list = ['Pastness', 'Deliberateness', 'Frame', 'Spencer', 'Glider','Freeze','Dry','Horse','House','Many','Anticipative','Adapt','large','Supplementation','Human','Dude','Juice','Plumbery','Morse','Antimagistrical','photooxidize','isocarboxazids','Game','Table','Glass','Mac','Monitor','Box','Chicken','Green','Freewheeler','Esteemed','Reference','Colon','Ruby','Phone','methionylglutaminylarginyltyrosylglutamylserylleucylphenylalanylalanylglutaminylleucyllysylglutamylarginyllysylglutamylglycylalanylphenylalanylvalylprolylphenylalanylvalylthreonylleucylglycylaspartylprolylglycylisoleucylglutamylglutaminylserylleucyllysylisoleucylaspartylthreonylleucylisoleucylglutamylalanylglycylalanylaspartylalanylleucylglutamylleucylglycylisoleucylprolylphenylalanylserylaspartylprolylleucylalanylaspartylglycylprolylthreonylisoleucylglutaminylasparaginylalanylthreonylleucylarginylalanylphenylalanylalanylalanylglycylvalylthreonylprolylalanylglutaminylcysteinylphenylalanylglutamylmethionylleucylalanylleucylisoleucylarginylglutaminyllysylhistidylprolylthreonylisoleucylprolylisoleucylglycylleucylleucylmethionyltyrosylalanylasparaginylleucylvalylphenylalanylasparaginyllysylglycylisoleucylaspartylglutamylphenylalanyltyrosylalanylglutaminylcysteinylglutamyllysylvalylglycylvalylaspartylserylvalylleucylvalylalanylaspartylvalylprolylvalylglutaminylglutamylserylalanylprolylphenylalanylarginylglutaminylalanylalanylleucylarginylhistidylasparaginylvalylalanylprolylisoleucylphenylalanylisoleucylcysteinylprolylprolylaspartylalanylaspartylaspartylaspartylleucylleucylarginylglutaminylisoleucylalanylseryltyrosylglycylarginylglycyltyrosylthreonyltyrosylleucylleucylserylarginylalanylglycylvalylthreonylglycylalanylglutamylasparaginylarginylalanylalanylleucylprolylleucylasparaginylhistidylleucylvalylalanyllysylleucyllysylglutamyltyrosylasparaginylalanylalanylprolylprolylleucylglutaminylglycylphenylalanylglycylisoleucylserylalanylprolylaspartylglutaminylvalyllysylalanylalanylisoleucylaspartylalanylglycylalanylalanylglycylalanylisoleucylserylglycylserylalanylisoleucylvalyllysylisoleucylisoleucylglutamylglutaminylhistidylasparaginylisoleucylglutamylprolylglutamyllysylmethionylleucylalanylalanylleucyllysylvalylphenylalanylvalylglutaminylprolylmethionyllysylalanylalanylthreonylarginylserine.','Word','Crazy','Happy','Super','Code','Holder']
end
easy_name_list_scramble = easy_name_list.shuffle
easy_name_list_length = easy_name_list_scramble[2].length
easy_name_list_length_minus_one = easy_name_list_length
easy_underscores = '_'* easy_name_list_length
easy_question = easy_name_list_scramble[2]
easy_question_first_letter = easy_question[0]
easy_hinted_question = easy_question_first_letter << easy_underscores
puts array_color(easy_hinted_question)
until easy_question == easy_underscores
	puts array_color ('Take a guess, enter one letter')
	easy_first_letter_guess = gets.chomp
	easy_question.split('').each_with_index do |char, i|
		if char == easy_first_letter_guess
			easy_underscores[i] = char
		end
	end

	p easy_underscores
	letter_used << easy_first_letter_guess
	p letter_used
	if easy_question.index(easy_first_letter_guess)
		puts green('That is correct')
	else
		puts red('Wrong answer, -1 life')
		life = life - 1
		p life
	end
end

life = life + 1
puts  green ('THAT IS THE CORRECT ANSWER')
puts  green ('You gained a life')
puts  green (life)
count = count + 1