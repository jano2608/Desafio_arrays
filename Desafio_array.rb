#EJERCICIO 1

arreglo = [1,2,3,9,1,4,5,2,3,6,6]

#1.1
puts arreglo[0]

#1.2
puts arreglo[-1]

#1.3
arreglo.each do |i|
    puts i
end

#1.4
arreglo.each_with_index do |value, indice|
    puts ("#{indice}  #{value}")
end

#1.5
arreglo.each_with_index do |value, indice|
  if indice.even?
    puts ("#{value}")
  end
end

#EJERCICIO 2

a = [1,2,3,9,1,4,5,2,3,6,6]

#2.1
a.pop

#2.2
a.shift

#2.3
puts a.count
if a.length.even?
  a.delete_at((a.length/2) - 1)
else
  a.delete_at(a.length / 2)
end
print a

#2.4
while a[-1]!= 1
  a.pop
end
print a

#2.5
a = [1,2,3,9,1,4,5,2,3,6,6]
aux = []

a.length.times do
  var = a.pop
  aux.push(var)
end
print aux

#EJERCICIO 3

a = [1,2,3,9,1,4,5,2,3,6,6]

#3.1
a.delete_if do |elem| elem.even?
end

#3.2
a = [1,2,3,9,1,4,6,8,2,10,5,2,3,6,6]
sum = 0
a.each do |i|
  sum += i
end
print sum

#3.3
sum = 0
result = 0
prom = a.length.to_f
a.each do |i|
  sum += i
  result = sum/prom
end
print result

#3.4
a = [1,2,3,9,1,4,6,8,2,10,5,2,3,6,6]
a.map do |elem| elem + 1
end

#EJERCICIO 4

products = %w(Producto1 Producto2 Producto3 Producto4)
html = ''
products.each do |i|
html += "<div class='product'><p> #{i} </p></div>\n"
end
print html

#EJERCICIO 5

products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w[1000 2000 1500 950]
html = ''
products.each_with_index do |pro, pri|
html += "<div class='product'>#{pro}"
html += "<p>Precios: #{prices[pri]}</p></div>\n"
end
print html

#EJERCICIO 6

a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"]

#6.1
print a + b

#6.2
print (a + b).uniq!

#6.3
print a & b

#6.4
comp = a.zip(b).flatten.compact
comp = comp.each_slice(2).to_a
print comp
