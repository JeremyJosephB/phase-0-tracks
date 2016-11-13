module Shout
  def yell_angrily(words)
    words + "!!!" + " >:-("
  end

  def yelling_happily(words)
  	words + "!!!" + " :-D"
  end
end

class My_mother
	include Shout
end

class Me
	include Shout
end

mum = My_mother.new
p mum.yelling_happily("Good morning")

jeremy = Me.new
p jeremy.yell_angrily("Freaking morning people")
