str = ''
(1..3).to_a.each do |num|
 str << "${top_mem name #{num}}${goto 170}${top_mem pid #{num}}${goto 220}${top_mem cpu #{num}}${goto 285}${top_mem mem_res #{num}}\n"
end
puts str
