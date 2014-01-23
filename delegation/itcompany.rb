require 'forwardable'

class InformationTechnology
	extend Forwardable
	def_delegators @outsource,:development,:testing
	def_delegators @bpo,:us_timing,:uk_timing
	def initialize
		@outsouce=Outsourcing.new
		@bpo=BusinessUnit.new
	end

end

class Outsourcing

	def development(lang='ruby')
		#lang=='ruby'? puts "ruby is awesome" : puts "#{lang} is good"
		puts "ruby is awesome"
	end
	def testing(tool='behat')
		puts "#{tool} tool is good to learn"
	end
end

class BusinessUnit

	def us_timing
		puts "i am working in united states timing"
	end
	def uk_timing
		puts "i am working in united kingdom timings"
	end
end

it = InformationTechnology.new
it.development("php")