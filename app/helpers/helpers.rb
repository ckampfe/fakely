  def rand_ident
    shrtn = ""
    6.times do
      shrtn = shrtn + (rand(2) > 0 ? ("a".."z").to_a.sample : rand(10).to_s)
    end
    shrtn
  end
