io.write('Vvedite nachalnuyu koordinatu x0: ')
x0 = io.read()
io.write('Vvedite nachalnuyu koordinatu y0: ')
y0 = io.read()
io.write('Vvedite nachalnuyu skorost snaryada, v0: ')
v0 = io.read()
io.write('Vvedite ugol, pod kotorim proizveden vistrel, a: ')
a = io.read()
io.write('Vvedite radius porazheniua snaryada, r: ')
r = io.read()
io.write('Vvedite koordinatu tseli x: ')
x = io.read()
io.write('Vvedite koordinatu tseli y: ')
y = io.read()

g = 9.81
k = 0
t1 = 0
t2 = 0.72

a_r = (a * math.pi) / 180
v_x0 = v0 * math.cos(a_r)
v_y0 = v0 * math.sin(a_r)
x_t1 = x0 + v_x0 * t1
y_t1 = y0 + v_y0 * t1 - (g * t1^2) / 2
x_t2 = x0 + v_x0 * t2
y_t2 = y0 + v_y0 * t2 - (g * t2^2) / 2
h = (v0^2 * (math.sin(a))^2) / (2 * g)
t_max = (2 * v0 * math.sin(a) * math.cos(a)) / g
l = (2 * v0^2 * math.sin(a) * math.cos(a)) / g
x = v0 * t_max * math.cos(a)
y = v0 * t_max * math.sin(a) - (g * t_max^2) / 2

print('Vremya(t)', 'Koordinata x', 'Koordinata y')
print(t1, ' ', string.format("%.2f", x_t1), ' ', string.format("%.2f", y_t1))
print(t2, ' ', string.format("%.2f", x_t2), ' ', string.format("%.2f", y_t2))

if (math.abs(x0 - x) < 1) and (y < r + y0) and (y > r) then
        k = 1
end
if k == 0 then
        print('Tsel ne porazhena')
else
        print('Tsel porazhena')
end

print('Maximalnaya visota - '..string.format("%.2f", h)..', vremya - '..string.format("%.2f", t_max))
