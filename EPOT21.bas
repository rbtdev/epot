10        graphics window 100,100,400,200
20        graphics 0
50        tl = 8.000000E-03
100        xa = 100
150        ya = 80
200        xb = 180
250        yb = 80
400        qa = 1
500        qb = 0.25
1200        dim dy(100)
1300        for y = 1 to 80
1400          dy(y) = (y-80)^2
1450          print y
1500        next y
1900        for i = 0 to 10
2000          for x = 10+i to 260+i step 10
2100            u = (x-xa)^2
2200            w = (x-xb)^2
3000            for y = 1 to 80
3040              if y = yb and x = xb then goto 3070
3050              if y = ya and x = xa then goto 3070
3060              goto 3100
3070              goto 6300
3100              v = (qa/sqr(u+dy(y)))+(qb/sqr(w+dy(y)))
4000              v = 250*v
4200              if abs(v-int(v+0.5)) > tl*v then goto 6300
4300              if int(v+0.5) > 8 then goto 6300
4500              pset x,y
4600              pset x,160-y
6300            next y
6400          next x
6450        next i
6500        end
