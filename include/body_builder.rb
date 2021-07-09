class BodyBuilder

  def initialize
		@triceps = 0
		@biceps = 0
		@deltovidka = 0
  end
  
  def pump(muscle)
		case muscle
		when "triceps"
			@triceps += 1
		when "biceps"
			@biceps += 1
		when "deltovidka"
			@deltovidka += 1
		end
  end

	def show_muscles
		return "Бицепсы: #{@biceps.to_s}\nТрицепсы: #{@triceps.to_s}\nДельтовидка: #{@deltovidka.to_s}"
	end

end