def block_method
  puts "primera linea del bloque"
  yield
  puts "this statement is after the yield keyword"
end

block_method do
  puts "Esta declaracion se esta llamando desde ele bloque"
end
