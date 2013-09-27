
defmodule RandomStuff do

    @author "Biomunky"

    # Import only the functions we use
    # (require '[clojure.java.io :only [reader]])
    import Enum, only: [filter: 2, map: 2]
    
    def get_author, do: @author

    def evens(lst) do
        filter lst, fn(i) -> rem(i, 2) == 0 end        
    end

    def double(lst) do
        map lst, fn(i) -> i * i end
    end
end

r = 1 .. 10

even_double = r |> RandomStuff.evens |> RandomStuff.double

IO.puts inspect even_double