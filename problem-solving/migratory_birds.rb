# https://www.hackerrank.com/challenges/migratory-birds/problem

# My code to generate test data
# n = rand(5..100)
# ar = [] 
# n.times do 
#     ar.push(rand(1..5))
# end

# code from HackerRank 
def migratoryBirds(n, ar)
  birds = [0, 0, 0, 0, 0] 
  ar.each do |number|
    birds[number-1] += 1 
  end 
  return birds.index(birds.max) + 1
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = migratoryBirds(n, ar)
puts result;
