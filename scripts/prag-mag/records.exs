defrecord FileInfo, atime: nil, accesses: 0

file_info = FileInfo.new(atime: {2013, 09, 10})

file_info = file_info.atime({2013, 10, 10})

# update a record

file_info_updated = file_info.update_accesses(fn(x) -> x + 20 end)

# PATTERN MATCHING
defmodule FileAccess do
    def was_accessed?(FileInfo[accesses: 0]), do: false 
    def was_accessed?(FileInfo[]), do: true
end

FileAccess.was_accessed? file_info
# false

FileAccess.was_accessed? file_info_updated 
# true

# Can link accesses to a 'variable'
def was_accessed?(FileInfo[accesses: accesses]), do: accesses > 0

FileAccess.was_accessed? file_info_updated 

# The following are essentially identical
def was_accessed?(FileInfo[accesses: 0]), do: false
def was_accessed?({FileInfo, _, 0}), do: false

# Pattern matching provides faster times when compared to FileInfo.new
# Elixir is happy to let you mix this, have to check defrecord macro
