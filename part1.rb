require 'csv'

data = CSV.read("problems.csv");
totalQuestions = 0;
correctAnswers = 0;
wrongAnswers = 0;


for i in 0..data.length-1
    totalQuestions=totalQuestions+1;
    print "Question Number "
    puts totalQuestions
    puts data[i][0]
    answer = gets.to_i
    puts answer==data[i][1].to_i
    if answer==data[i][1].to_i
        correctAnswers=correctAnswers+1;
    else
        wrongAnswers=wrongAnswers+1;
    end
end

puts "Quiz Ended"
print "You attempted "
print totalQuestions
puts " questions"

print "out of which "
print correctAnswers
print " were correct"

print " and "
print wrongAnswers
puts " were wrong."


