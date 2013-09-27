# Read this file into iex:
# c "<filaname>"

handle_open = fn
								{:ok, file}  -> "Read data: #{IO.read(file, :line)}"
								#:file is a call to the underlying Erlang File module
								# .format_error(x) belongs to it
								{_,   error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("/Users/dan/.zshrc"))
IO.puts handle_open.(File.open("/Users/dan/.nosuchfile"))