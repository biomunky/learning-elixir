zsh = "/Users/dan/.zshrc"

f = File.open!(zsh)

all_lines = Enum.map IO.stream(f, :line), &(&1)

Enum.map all_lines, &(IO.puts "> #{&1}")