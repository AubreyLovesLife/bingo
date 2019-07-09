# Prints out a bingo card

require "prawn"


b_col =  (1..15).to_a.sample(5)
i_col = (16..30).to_a.sample(5)
n_col = (31..45).to_a.sample(4)
g_col = (46..60).to_a.sample(5)
o_col = (61..75).to_a.sample(5)


i = 0 
while i <= 4
  if b_col[i] < 10
    b_col[i] = b_col[i].to_s + " "
  else
    nil
  end
  i = i + 1
end

bingo_card = <<-BINGO
+-----+-----+-----+-----+-----+
|  B  |  I  |  N  |  G  |  O  |
+-----+-----+-----+-----+-----+
|  #{b_col[0]} |  #{i_col[0]} |  #{n_col[0]} |  #{g_col[0]} |  #{o_col[0]} |
+-----+-----+-----+-----+-----+
|  #{b_col[1]} |  #{i_col[1]} |  #{n_col[1]} |  #{g_col[1]} |  #{o_col[1]} |
+-----+-----+-----+-----+-----+ 
|  #{b_col[2]} |  #{i_col[2]} |  F  |  #{g_col[2]} |  #{o_col[2]} |
+-----+-----+-----+-----+-----+
|  #{b_col[3]} |  #{i_col[3]} |  #{n_col[2]} |  #{g_col[3]} |  #{o_col[3]} |
+-----+-----+-----+-----+-----+
|  #{b_col[4]} |  #{i_col[4]} |  #{n_col[3]} |  #{g_col[4]} |  #{o_col[4]} |
+-----+-----+-----+-----+-----+ 
BINGO

puts bingo_card

Prawn::Document.generate("bingo.pdf") do 
    text bingo_card 
end





