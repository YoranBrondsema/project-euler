GRID_SIZE = 20

def nr_routes(x, y, buffer)
  return 1 if x == 0 or y == 0

  if buffer[x][y].nil?
     buffer[x][y] = nr_routes(x-1, y, buffer) + nr_routes(x, y-1, buffer)
  end
  return buffer[x][y]
end

buffer = Array.new(GRID_SIZE+1) { Array.new(GRID_SIZE+1) }

puts nr_routes(GRID_SIZE, GRID_SIZE, buffer)
