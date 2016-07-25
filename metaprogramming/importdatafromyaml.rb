class ImportDataFromYaml

	def read_yaml
		if File.exists? conf.rc
			YAML.load_file(conf.rc).each do |k,v|
				puts k,v
			end
		end
	end

	def show_public_instance
		puts public_instance_methods(true)
	end
end



i=ImportDataFromYaml.new
# i.read_yaml
i.show_public_instance