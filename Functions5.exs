amp_map = fn -> Enum.map [1, 2, 3, 4], &(&1 + 2) end

amp_each = fn -> Enum.each [1, 2, 3, 4], &(IO.inspect &1) end
