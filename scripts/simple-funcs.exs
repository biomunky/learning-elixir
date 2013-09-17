r = 1..10

long_way = Enum.map(r, fn(i) -> i * i end)

import Enum
also_write_as = map r, fn(i) -> i * i end

short_way = Enum.map r, &1*&1

