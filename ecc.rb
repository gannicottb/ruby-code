class EllipticCurve
	attr_accessor :p, :a, :b

	def to_s
		"Curve: E #{@p}(#{@a}#{@b})"
	end 
  

	
end

class EC_point
	def initialize(ec, x, y)
		@ec = ec
		@x = x
		@y = y
	end

	def + (q)
		#should be passed an ecc object
		#returns another ecc object
		#lambda (self, Q)
		#x_r
		#y_r
	end	

	
  def x_r (q)
  	#formula

  end

end	