ALPHABET = ("a".."z").to_a

helpers do
  def rand_ident
    shrtn = ""
    6.times do
      shrtn = shrtn + (rand(2) > 0 ? ALPHABET.sample : rand(10).to_s)
    end
    shrtn
  end
end
