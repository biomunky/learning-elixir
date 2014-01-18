defmodule College do
	def make_room_list(filename) do
		{status, device} = File.open(filename, [:read, :utf8])
		agg = HashDict.new
		process_line(device, agg)
	end

	defp process_line(device, agg) do
		data = IO.read(device, :line)
		case data do
			:eof -> File.close(device)
					agg
			_    -> [_, course, room] = String.split(String.strip(data), ",")
					process_line(device, update_dict(agg, room, course))
		end
	end

	def update_dict(dict, key, new_value) do
		existing_key = HashDict.get(dict, key)
		case existing_key do
			nil  -> HashDict.put(dict, key, [new_value])
			_    -> HashDict.put(dict, key, [new_value | existing_key])
		end
	end

end
