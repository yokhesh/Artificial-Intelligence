; template for defining the parameters of a golf course
(deftemplate parameters
(slot number
(type INTEGER)
(default ?DERIVE))
(slot tee-to-first-fairway
(type INTEGER)
(default ?DERIVE))
(slot tee-to-long-grass-field-between-first-fairway
(type INTEGER)
(default ?DERIVE))
(slot distance-of-first-fairway
(type INTEGER)
(default ?DERIVE))
(slot total-length-of-the-long-grass-field
(type INTEGER)
(default ?DERIVE))
(slot wind-condition
(type INTEGER)
(default ?DERIVE))
(slot length-of-hazard
(type INTEGER)
(default ?DERIVE))
(slot distance-of-hole
(type INTEGER)
(default ?DERIVE))
(slot distance-between-hazard-and-green
(type INTEGER)
(default ?DERIVE))
(slot loft-required-to-cross-the-hazard
(type INTEGER)
(default ?DERIVE))
(slot name-of-the-bad-ground
(type SYMBOL)
(default ?DERIVE))
(slot name-of-hazard
(type SYMBOL)
(default ?DERIVE))
(slot loft-required-to-cross-the-long-grass-field
(type INTEGER)
(default ?DERIVE)))

;Defining the distance and loft of a club

(deffacts driver
(driver distance 230 loft 9))

(deffacts putter
(putter distance 20 loft 4))

(deffacts 3-wood
(3-wood distance 210 loft 15))

(deffacts 5-wood
(5-wood distance 200 loft 21))

(deffacts 2-iron
(2-iron distance 190 loft 20))

(deffacts 4-iron
(4-iron distance 170 loft 25))

(deffacts 5-iron
(5-iron distance 160 loft 28))

(deffacts 6-iron
(6-iron distance 150 loft 31))

(deffacts 7-iron
(7-iron distance 140 loft 34))

(deffacts 8-iron
(8-iron distance 130 loft 37))

(deffacts 9-iron
(9-iron distance 120 loft 41))

(deffacts pitching-wedge
(pitching-wedge distance 110 loft 45))

(deffacts lob-wedge
(lob-wedge distance 65 loft 60))

(deffacts sand-wedge
(sand-wedge distance 90 loft 55))

;The parameters are defined in the below deffacts
(deffacts eighteenth-hole
(parameters(number 18)
(tee-to-first-fairway 360)
(tee-to-long-grass-field-between-first-fairway 150)
(distance-of-first-fairway 90)
(total-length-of-the-long-grass-field 200)
(wind-condition 15)
(length-of-hazard 10)
(distance-of-hole 80)
(distance-between-hazard-and-green 80)
(loft-required-to-cross-the-hazard 18)
(name-of-the-bad-ground long-grass)
(name-of-hazard tree)
(loft-required-to-cross-the-long-grass-field 20)))

(deffacts seventeenth-hole
(parameters(number 17)
(tee-to-first-fairway 120)
(tee-to-long-grass-field-between-first-fairway 80)
(distance-of-first-fairway 135)
(total-length-of-the-long-grass-field 40)
(wind-condition 5)
(length-of-hazard 10)
(distance-of-hole 30)
(distance-between-hazard-and-green 70)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard water)
(name-of-the-bad-ground sand)
(loft-required-to-cross-the-long-grass-field 42)))

(deffacts sixteenth-hole
(parameters(number 16)
(tee-to-first-fairway 120)
(tee-to-long-grass-field-between-first-fairway 20)
(distance-of-first-fairway 35)
(total-length-of-the-long-grass-field 100)
(wind-condition 5)
(length-of-hazard 30)
(distance-of-hole 50)
(distance-between-hazard-and-green 100)
(loft-required-to-cross-the-hazard 20)
(name-of-hazard tree)
(name-of-the-bad-ground sand)
(loft-required-to-cross-the-long-grass-field 30)))

(deffacts fifteenth-hole
(parameters(number 15)
(tee-to-first-fairway 90)
(tee-to-long-grass-field-between-first-fairway 20)
(distance-of-first-fairway 45)
(total-length-of-the-long-grass-field 70)
(wind-condition 5)
(length-of-hazard 30)
(distance-of-hole 15)
(distance-between-hazard-and-green 50)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard sand-bunker)
(name-of-the-bad-ground sand)
(loft-required-to-cross-the-long-grass-field 30)))

(deffacts fourteenth-hole
(parameters(number 14)
(tee-to-first-fairway 170)
(tee-to-long-grass-field-between-first-fairway 100)
(distance-of-first-fairway 45)
(total-length-of-the-long-grass-field 70)
(wind-condition 15)
(length-of-hazard 20)
(distance-of-hole 90)
(distance-between-hazard-and-green 60)
(loft-required-to-cross-the-hazard 30)
(name-of-hazard trees)
(name-of-the-bad-ground sand)
(loft-required-to-cross-the-long-grass-field 30)))

(deffacts thirteenth-hole
(parameters(number 13)
(tee-to-first-fairway 275)
(tee-to-long-grass-field-between-first-fairway 65)
(distance-of-first-fairway 105)
(total-length-of-the-long-grass-field 210)
(wind-condition -10)
(length-of-hazard 40)
(distance-of-hole 110)
(distance-between-hazard-and-green 60)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard water)
(name-of-the-bad-ground sand)
(loft-required-to-cross-the-long-grass-field 15)))

(deffacts twelveth-hole
(parameters(number 12)
(tee-to-first-fairway 80)
(tee-to-long-grass-field-between-first-fairway 20)
(distance-of-first-fairway 115)
(total-length-of-the-long-grass-field 60)
(wind-condition -15)
(length-of-hazard 35)
(distance-of-hole 90)
(distance-between-hazard-and-green 45)
(loft-required-to-cross-the-hazard 3)
(name-of-hazard water)
(name-of-the-bad-ground sand)
(loft-required-to-cross-the-long-grass-field 33)))

(deffacts eleventh-hole
(parameters(number 11)
(tee-to-first-fairway 255)
(tee-to-long-grass-field-between-first-fairway 95)
(distance-of-first-fairway 90)
(total-length-of-the-long-grass-field 160)
(wind-condition 5)
(length-of-hazard 23)
(distance-of-hole 60)
(distance-between-hazard-and-green 40)
(loft-required-to-cross-the-hazard 20)
(name-of-hazard trees)
(name-of-the-bad-ground long-grass)
(loft-required-to-cross-the-long-grass-field 15)))

(deffacts tenth-hole
(parameters(number 10)
(tee-to-first-fairway 165)
(tee-to-long-grass-field-between-first-fairway 70)
(distance-of-first-fairway 63)
(total-length-of-the-long-grass-field 95)
(wind-condition 10)
(length-of-hazard 23)
(distance-of-hole 90)
(distance-between-hazard-and-green 90)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard sand-bunker)
(name-of-the-bad-ground long-grass)
(loft-required-to-cross-the-long-grass-field 30)))

(deffacts ninth-hole
(parameters(number 9)
(tee-to-first-fairway 283)
(tee-to-long-grass-field-between-first-fairway 88)
(distance-of-first-fairway 123)
(total-length-of-the-long-grass-field 195)
(wind-condition -10)
(length-of-hazard 60)
(distance-of-hole 85)
(distance-between-hazard-and-green 90)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard water)
(name-of-the-bad-ground sand)
(loft-required-to-cross-the-long-grass-field 12)))

(deffacts eighth-hole
(parameters(number 8)
(tee-to-first-fairway 255)
(tee-to-long-grass-field-between-first-fairway 45)
(distance-of-first-fairway 135)
(total-length-of-the-long-grass-field 210)
(wind-condition 13)
(length-of-hazard 24)
(distance-of-hole 35)
(distance-between-hazard-and-green 30)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard water)
(name-of-the-bad-ground sand)
(loft-required-to-cross-the-long-grass-field 26)))

(deffacts seventh-hole
(parameters(number 7)
(tee-to-first-fairway 243)
(tee-to-long-grass-field-between-first-fairway 80)
(distance-of-first-fairway 195)
(total-length-of-the-long-grass-field 163)
(wind-condition 10)
(length-of-hazard 35)
(distance-of-hole 110)
(distance-between-hazard-and-green 85)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard water)
(name-of-the-bad-ground long-grass)
(loft-required-to-cross-the-long-grass-field 21)))

(deffacts sixth-hole
(parameters(number 6)
(tee-to-first-fairway 260)
(tee-to-long-grass-field-between-first-fairway 120)
(distance-of-first-fairway 80)
(total-length-of-the-long-grass-field 140)
(wind-condition -16)
(length-of-hazard 20)
(distance-of-hole 25)
(distance-between-hazard-and-green 95)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard water)
(name-of-the-bad-ground long-grass)
(loft-required-to-cross-the-long-grass-field 18)))

(deffacts fifth-hole
(parameters(number 5)
(tee-to-first-fairway 280)
(tee-to-long-grass-field-between-first-fairway 150)
(distance-of-first-fairway 80)
(total-length-of-the-long-grass-field 130)
(wind-condition 9)
(length-of-hazard 10)
(distance-of-hole 55)
(distance-between-hazard-and-green 60)
(loft-required-to-cross-the-hazard 20)
(name-of-the-bad-ground sand)
(name-of-hazard tree)
(loft-required-to-cross-the-long-grass-field 23)))

(deffacts fourth-hole
(parameters(number 4)
(tee-to-first-fairway 284)
(tee-to-long-grass-field-between-first-fairway 95)
(distance-of-first-fairway 170)
(total-length-of-the-long-grass-field 189)
(wind-condition -10)
(length-of-hazard 40)
(distance-of-hole 90)
(distance-between-hazard-and-green 95)
(loft-required-to-cross-the-hazard 21)
(name-of-hazard trees)
(name-of-the-bad-ground long-grass)
(loft-required-to-cross-the-long-grass-field 26)))

(deffacts third-hole
(parameters(number 3)
(tee-to-first-fairway 75)
(tee-to-long-grass-field-between-first-fairway 30)
(distance-of-first-fairway 50)
(total-length-of-the-long-grass-field 45)
(wind-condition 10)
(length-of-hazard 35)
(distance-of-hole 45)
(distance-between-hazard-and-green 50)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard sand)
(name-of-the-bad-ground long-grass)
(loft-required-to-cross-the-long-grass-field 10)))

(deffacts second-hole
(parameters(number 2)
(tee-to-first-fairway 165)
(tee-to-long-grass-field-between-first-fairway 75)
(distance-of-first-fairway 110)
(total-length-of-the-long-grass-field 90)
(wind-condition 10)
(length-of-hazard 50)
(distance-of-hole 90)
(distance-between-hazard-and-green 80)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard water)
(name-of-the-bad-ground long-grass)
(loft-required-to-cross-the-long-grass-field 30)))

(deffacts first-hole
(parameters(number 1)
(tee-to-first-fairway 140)
(tee-to-long-grass-field-between-first-fairway 65)
(distance-of-first-fairway 95)
(total-length-of-the-long-grass-field 75)
(wind-condition -15)
(length-of-hazard 30)
(distance-of-hole 35)
(distance-between-hazard-and-green 60)
(loft-required-to-cross-the-hazard 4)
(name-of-hazard water)
(name-of-the-bad-ground long-grass)
(loft-required-to-cross-the-long-grass-field 30)))

(defglobal ?*x* = 1)
(defglobal ?*y* = 0)
(defglobal ?*z* = 1)

;Rule to be fired for 3-par golf course
(defrule three-par
(parameters(number ?a)
(tee-to-first-fairway ?b)
(tee-to-long-grass-field-between-first-fairway ?c)
(distance-of-first-fairway ?d)
(total-length-of-the-long-grass-field ?e)
(wind-condition ?w)
(length-of-hazard ?ha)
(distance-of-hole ?ghalf)
(distance-between-hazard-and-green ?sf)
(loft-required-to-cross-the-hazard ?loft )
(name-of-the-bad-ground ?bg )
(name-of-hazard ?nha)
(loft-required-to-cross-the-long-grass-field ?llg))

(driver distance ?dd loft ?ld)
(putter distance ?pd loft ?lp)
(3-wood distance ?d3w loft ?l3w)
(5-wood distance ?d5w loft ?l5w)
(2-iron distance ?d2i loft ?l2i)
(4-iron distance ?d4i loft ?l4i)
(5-iron distance ?d5i loft ?l5i)
(6-iron distance ?d6i loft ?l6i)
(7-iron distance ?d7i loft ?l7i)
(8-iron distance ?d8i loft ?l8i)
(9-iron distance ?d9i loft ?l9i)
(pitching-wedge distance ?dpw loft ?lpw)
(lob-wedge distance ?dlw loft ?llw)
(sand-wedge distance ?dsw loft ?lsw)

=>
(bind ?total (+ ?b ?d ?ha ?sf ?w))
(if ( < ?total 230)
then
(if (< ?loft 9)
then
(printout t "Recommended clubs for  " ?a " hole which is Par-3" crlf)
;First shot
(printout t "FIRST SHOT-Use Driver to get to the green. ")
(bind ?rem ( - (+ ?b ?d ?ha ?sf ?ghalf) 230))
;Second shot
(if ( <= ?rem 20)
then
(printout t "SECOND SHOT - Use putter to put the ball into the hole " crlf)
else
(printout t "SECOND SHOT - Use putter once to get the ball close to the hole." )
(bind ?rem1 (- ?rem 20))
(printout t "THIRD SHOT - Use putter to put the ball into the hole" crlf)))))

;Rule to be fired for 4-par golf course
(defrule four-par
(parameters(number ?a)
(tee-to-first-fairway ?b)
(tee-to-long-grass-field-between-first-fairway ?c)
(distance-of-first-fairway ?d)
(total-length-of-the-long-grass-field ?e)
(wind-condition ?w)
(length-of-hazard ?ha)
(distance-of-hole ?ghalf)
(distance-between-hazard-and-green ?sf)
(loft-required-to-cross-the-hazard ?loft )
(name-of-the-bad-ground ?bg )
(name-of-hazard ?nha)
(loft-required-to-cross-the-long-grass-field ?llg))
(driver distance ?dd loft ?ld)
(putter distance ?pd loft ?lp)
(3-wood distance ?d3w loft ?l3w)
(5-wood distance ?d5w loft ?l5w)
(2-iron distance ?d2i loft ?l2i)
(4-iron distance ?d4i loft ?l4i)
(5-iron distance ?d5i loft ?l5i)
(6-iron distance ?d6i loft ?l6i)
(7-iron distance ?d7i loft ?l7i)
(8-iron distance ?d8i loft ?l8i)
(9-iron distance ?d9i loft ?l9i)
(pitching-wedge distance ?dpw loft ?lpw)
(lob-wedge distance ?dlw loft ?llw)
(sand-wedge distance ?dsw loft ?lsw)

=>
(bind ?total (+ ?b ?d ?ha ?sf ?w))
(bind ?tothehole (+ ?b ?d ?ha ?sf ?ghalf))
(if ( > ?total 230)
then
(if(< ?b 230 )
then
(printout t "Recommended clubs for  " ?a " hole which is Par-4.")
(printout t "The total distance from tee to hole is " ?tothehole " yards" crlf)
(bind ?b (+ ?b ?w))
;First shot
(while (= ?*x* 1)
(if(< ?b ?dd)
then
(if(> (+ ?b ?d) ?dd)
then
(printout t "FIRST SHOT - Use Driver for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 230 ?w))
(break)))
(if(< ?b ?d3w)
then
(if(> (+ ?b ?d) ?d3w)
then
(printout t "FIRST SHOT - Use 3-Wood for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 210 ?w))
(break)))
(if(< ?b ?d5w)
then
(if(> (+ ?b ?d) ?d5w)
then
(printout t "FIRST SHOT - Use 5-Wood for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 200 ?w))
(break)))
(if(< ?b ?d2i)
then
(if(> (+ ?b ?d) ?d2i)
then
(printout t "FIRST SHOT - Use 2-Iron for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 190 ?w))
(break)))
(if(< ?b ?d4i)
then
(if(> (+ ?b ?d) ?d4i)
then
(printout t "FIRST SHOT - Use 4-Iron for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 170 ?w))
(break)))
(if(< ?b ?d5i)
then
(if(> (+ ?b ?d) ?d5i)
then
(printout t "FIRST SHOT - Use 5-Iron for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 160 ?w))
(break)))
(if(< ?b ?d6i)
then
(if(> (+ ?b ?d) ?d6i)
then
(printout t "FIRST SHOT - Use 6-Iron for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 150 ?w))
(break)))
(if(< ?b ?d7i)
then
(if(> (+ ?b ?d) ?d7i)
then
(printout t "FIRST SHOT - Use 7-Iron for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 140 ?w))
(break)))
(if(< ?b ?d8i)
then
(if(> (+ ?b ?d) ?d8i)
then
(printout t "FIRST SHOT - Use 8-Iron for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 130 ?w))
(break)))
(if(< ?b ?d9i)
then
(if(> (+ ?b ?d) ?d9i)
then
(printout t "FIRST SHOT - Use 9-Iron for the first shot towards the "
?a " hole.")
(bind ?discov1 (- 120 ?w))
(break)))
(if(< ?b ?dpw)
then
(if(> (+ ?b ?d) ?dpw)
then
(printout t "FIRST SHOT - Use Pitching wedge for the first shot towards the " ?a " hole.")
(bind ?discov1 (- 210 ?w))
(break)))
(if(< ?b ?dlw)
then
(if(> (+ ?b ?d) ?dlw)
then
(printout t "FIRST SHOT - Use Lob wedge for the first shot towards the " ?a " hole.")
(bind ?discov1 (- 65 ?w))
(break)))
(if(< ?b ?dsw)
then
(if(> (+ ?b ?d) ?dsw)
then
(printout t "FIRST SHOT - Use Sand wedge for the first shot towards the "
?a " hole.")
(assert(the distance covered in first shot for ?a hole is 90))
(bind ?discov1 (- 90 ?w))
(break))))
;Second shot
;Getting past an hazard
(bind ?tothehole1 ( - ?tothehole ?discov1 ))
(printout t "Distance remaining is " ?tothehole1 " yards"crlf)
(while (= ?*x* 1)
(bind ?remdis1 ( - (+ ?b ?d) ?discov1))
(bind ?desdis1 ( + ?remdis1 ?ha ?sf))
(bind ?desdis1 ( + ?desdis1 ?w))
(bind ?tothehole2 (+ ?desdis1 0))
(if ( < ?desdis1 ?d3w)
then
(if ( > (+ ?desdis1 ?ghalf) ?d3w)
then
(if ( < ?loft ?l3w)
then
(printout t "SECOND SHOT - Use 3-Wood to get across hazard into the green.")
(bind ?discov2 (- 210 ?w))
(break))))
(if ( < ?desdis1 ?d5w)
then
(if ( > (+ ?desdis1 ?ghalf) ?d5w)
then
(if ( < ?loft ?l5w)
then
(printout t "SECOND SHOT - Use 5-Wood to get across hazard into the green.")
(bind ?discov2 (- 200 ?w))
(break))))
(if ( < ?desdis1 ?d2i)
then
(if ( > (+ ?desdis1 ?ghalf) ?d2i)
then
(if ( < ?loft ?l2i)
then
(printout t "SECOND SHOT - Use 2-Iron to get across hazard into the green.")
(bind ?discov2 (- 190 ?w))
(break))))
(if ( < ?desdis1 ?d4i)
then
(if ( > (+ ?desdis1 ?ghalf) ?d4i)
then
(if ( < ?loft ?l4i)
then
(printout t "SECOND SHOT - Use 4-Iron to get across hazard into the green.")
(bind ?discov2 (- 170 ?w))
(break))))
(if ( < ?desdis1 ?d5i)
then
(if ( > (+ ?desdis1 ?ghalf) ?d5i)
then
(if ( < ?loft ?l5i)
then
(printout t "SECOND SHOT - Use 5-Iron to get across hazard into the green.")
(bind ?discov2 (- 160 ?w))
(break))))
(if ( < ?desdis1 ?d6i)
then
(if ( > (+ ?desdis1 ?ghalf) ?d6i)
then
(if ( < ?loft ?l6i)
then
(printout t "SECOND SHOT - Use 6-Iron to get across hazard into the green.")
(bind ?discov2 (- 150 ?w))
(break))))
(if ( < ?desdis1 ?d7i)
then
(if ( > (+ ?desdis1 ?ghalf) ?d7i)
then
(if ( < ?loft ?l7i)
then
(printout t "SECOND SHOT - Use 7-Iron to get across hazard into the green.")
(bind ?discov2 (- 140 ?w))
(break))))
(if ( < ?desdis1 ?d8i)
then
(if ( > (+ ?desdis1 ?ghalf) ?d8i)
then
(if ( < ?loft ?l8i)
then
(printout t "SECOND SHOT - Use 8-Iron to get across hazard into the green.")
(bind ?discov2 (- 130 ?w))
(break))))
(if ( < ?desdis1 ?d9i)
then
(if ( > (+ ?desdis1 ?ghalf) ?d9i)
then
(if ( < ?loft ?l9i)
then
(printout t "SECOND SHOT - Use 9-Iron to get across hazard into the green.")
(bind ?discov2 (- 120 ?w))
(break))))
(if ( < ?desdis1 ?dpw)
then
(if ( > (+ ?desdis1 ?ghalf) ?dpw)
then
(if ( < ?loft ?lpw)
then
(printout t "SECOND SHOT - Use Pitching wedge to get across hazard into the green.")
(bind ?discov2 (- 110 ?w))
(break))))
(if ( < ?desdis1 ?dsw)
then
(if ( > (+ ?desdis1 ?ghalf) ?dsw)
then
(if ( < ?loft ?lsw)
then
(printout t "SECOND SHOT - Use Sand wedge to get across hazard into the green.")
(bind ?discov2 (- 90 ?w))
(break))))
(if ( < ?desdis1 ?dlw)
then
(if ( > (+ ?desdis1 ?ghalf) ?dlw)
then
(if ( < ?loft ?llw)
then
(printout t "SECOND SHOT - Use Lob wedge to get across hazard into the green.")
(bind ?discov2 (- 65 ?w))
(break)))))
(bind ?remdis2 ( - ( + ?remdis1 ?ha ?sf ?ghalf) ?discov2))
(bind ?desdis2 ( + ?remdis2 0))
(bind ?tothehole3 (- ?tothehole1 ?discov2))
(printout t "Distance remaining is " ?tothehole3 " yards" crlf)
;For third shot and fourth shot if required
;ONE SHOT CASE
(if ( <= ?desdis2 20)
then
(printout t "THIRD SHOT - Use Putter to put the ball in the hole" crlf))
;TWO SHOT CASE
(if ( >= ?desdis2 20)
then
(if ( <= ?desdis2 69)
then
(printout t "THIRD SHOT - Use Putter once to get the ball close to the hole." crlf)
(bind ?tothehole4 (- ?tothehole3 20))
(printout t "Fourth SHOT - Use Putter again to put the ball in the hole" crlf)))
(if ( >= ?desdis2 20)
then
(if ( >= ?desdis2 70)
then
(printout t "THIRD SHOT - Use Lob wedge once to get the ball close to the hole." crlf)
(bind ?tothehole4 (- ?tothehole3 65))
(printout t "Fourth SHOT - Use Putter again to put the ball in the hole" crlf))))))

;Rule to be fired for 5-par
(defrule five-par
(parameters(number ?a)
(tee-to-first-fairway ?b)
(tee-to-long-grass-field-between-first-fairway ?c)
(distance-of-first-fairway ?d)
(total-length-of-the-long-grass-field ?e)
(wind-condition ?w)
(length-of-hazard ?ha)
(distance-of-hole ?ghalf)
(distance-between-hazard-and-green ?sf)
(loft-required-to-cross-the-hazard ?loft )
(name-of-the-bad-ground ?bg )
(name-of-hazard ?nha)
(loft-required-to-cross-the-long-grass-field ?llg))
(driver distance ?dd loft ?ld)
(putter distance ?pd loft ?lp)
(3-wood distance ?d3w loft ?l3w)
(5-wood distance ?d5w loft ?l5w)
(2-iron distance ?d2i loft ?l2i)
(4-iron distance ?d4i loft ?l4i)
(5-iron distance ?d5i loft ?l5i)
(6-iron distance ?d6i loft ?l6i)
(7-iron distance ?d7i loft ?l7i)
(8-iron distance ?d8i loft ?l8i)
(9-iron distance ?d9i loft ?l9i)
(pitching-wedge distance ?dpw loft ?lpw)
(lob-wedge distance ?dlw loft ?llw)
(sand-wedge distance ?dsw loft ?lsw)

=>
(if(> ?b 230 )
then
(bind ?tothehole (+ ?b ?d ?ha ?sf ?ghalf))
(printout t "Recommended clubs for  " ?a " hole which is Par-5.")
(printout t "The total distance from tee to hole is " ?tothehole " yards"crlf)
;First shot

(printout t "FIRST SHOT-Use Driver to hit the ball into the long-grass or sand. ")
(assert(the distance covered in first shot for ?a hole is 230))
(bind ?discov1 (- 230 ?w))
(bind ?remdis1 (- (+ ?e ?c) ?discov1))
(bind ?desdis1 ( + ?remdis1 ?w))
(bind ?tothehole1 (- ?tothehole ?discov1))
(printout t "Distance remaining is " ?tothehole1 " yards" crlf)
"SECOND SHOT"
;Second shot
;SANDY CONDITIONS

(if ( eq ?bg sand)
then
(printout t "SECOND SHOT - Use Sand wedge to get past the sandy conditions.")
(bind ?discov2 (- 90 ?w)))

;LONG GRASS FIELD
(if (eq ?bg long-grass)
then
(while ( = ?*x* 1) 
(if (< ?llg ?l4i)
then
(if (< ?desdis1 ?d4i)
then
(if (> (+ ?desdis1 ?d) ?d4i)
then
(printout t "SECOND SHOT-Use 4-Iron to cross the long-grass field.")
(bind ?discov2 (- 170 ?w))
(break))))

(if (< ?llg ?l5i)
then
(if (< ?desdis1 ?d5i)
then
(if (> (+ ?desdis1 ?d) ?d5i)
then
(printout t "SECOND SHOT-Use 5-Iron to cross the long-grass field.")
(bind ?discov2 (- 160 ?w))
(break))))
(if (< ?llg ?l6i)
then
(if (< ?desdis1 ?d6i)
then
(if (> (+ ?desdis1 ?d) ?d6i)
then
(printout t "SECOND SHOT-Use 6-Iron to cross the long-grass field.")
(bind ?discov2 (- 150 ?w))
(break))))
(if (< ?llg ?l7i)
then
(if (< ?desdis1 ?d7i)
then
(if (> (+ ?desdis1 ?d) ?d7i)
then
(printout t "SECOND SHOT-Use 7-Iron to cross the long-grass field.")
(bind ?discov2 (- 140 ?w))
(break))))
(if (< ?llg ?l8i)
then
(if (< ?desdis1 ?d8i)
then
(if (> (+ ?desdis1 ?d) ?d8i)
then
(printout t "SECOND SHOT-Use 8-Iron to cross the long-grass field.")
(bind ?discov2 (- 130 ?w))
(break))))
(if (< ?llg ?l9i)
then
(if (< ?desdis1 ?d9i)
then
(if (> (+ ?desdis1 ?d) ?d9i)
then
(printout t "SECOND SHOT-Use 9-Iron to cross the long-grass field.")
(bind ?discov2 (- 120 ?w))
(break))))
(if (< ?llg ?lpw)
then
(if (< ?desdis1 ?dpw)
then
(if (> (+ ?desdis1 ?d) ?dpw)
then
(printout t "SECOND SHOT-Use Pitching Wedge to cross the long-grass field.")
(bind ?discov2 (- 110 ?w))
(break))))
(if (< ?llg ?llw)
then
(if (< ?desdis1 ?dlw)
then
(if (> (+ ?desdis1 ?d) ?dlw)
then
(printout t "SECOND SHOT-Use Lob wedge to cross the long-grass field.")
(bind ?discov2 (- 65 ?w))
(break))))))
(bind ?remdis2 ( - (+ ?remdis1 ?d) ?discov2))
(bind ?desdis2 ( + ?remdis2 ?ha ?sf ?w))
(bind ?tothehole2 ( - ?tothehole1 ?discov2))
(printout t "Distance remaining is " ?tothehole2 " yards"crlf)
;Third shot
;Getting past an hazard
(while (= ?*x* 1)
(if ( < ?desdis2 ?d3w)
then
(if ( > (+ ?desdis2 ?ghalf) ?d3w)
then
(if ( < ?loft ?l3w)
then
(printout t "THIRD SHOT- Use 3-Wood to get across the hazard into the green.")
(bind ?discov3 (- 210 ?w))
(break))))

(if ( < ?desdis2 ?d5w)
then
(if ( > (+ ?desdis2 ?ghalf) ?d5w)
then
(if ( < ?loft ?l5w)
then
(printout t "THIRD SHOT- Use 5-Wood to get across the hazard into the green.")
(bind ?discov3 (- 200 ?w))
(break))))

(if ( < ?desdis2 ?d2i)
then
(if ( > (+ ?desdis2 ?ghalf) ?d2i)
then
(if ( < ?loft ?l2i)
then
(printout t "THIRD SHOT- Use 2-Iron to get across the hazard into the green.")
(bind ?discov3 (- 190 ?w))
(break))))

(if ( < ?desdis2 ?d4i)
then
(if ( > (+ ?desdis2 ?ghalf) ?d4i)
then
(if ( < ?loft ?l4i)
then
(printout t "THIRD SHOT- Use 4-Iron to get across the hazard into the green.")
(bind ?discov3 (- 170 ?w))
(break))))

(if ( < ?desdis2 ?d5i)
then
(if ( > (+ ?desdis2 ?ghalf) ?d5i)
then
(if ( < ?loft ?l5i)
then
(printout t "THIRD SHOT- Use 5-Iron to get across the hazard into the green.")
(bind ?discov3 (- 160 ?w))
(break))))

(if ( < ?desdis2 ?d6i)
then
(if ( > (+ ?desdis2 ?ghalf) ?d6i)
then
(if ( < ?loft ?l6i)
then
(printout t "THIRD SHOT- Use 6-Iron to get across the hazard into the green.")
(bind ?discov3 (- 150 ?w))
(break))))

(if ( < ?desdis2 ?d7i)
then
(if ( > (+ ?desdis2 ?ghalf) ?d7i)
then
(if ( < ?loft ?l7i)
then
(printout t "THIRD SHOT- Use 7-Iron to get across the hazard into the green.")
(bind ?discov3 (- 140 ?w))
(break))))

(if ( < ?desdis2 ?d8i)
then
(if ( > (+ ?desdis2 ?ghalf) ?d8i)
then
(if ( < ?loft ?l8i)
then
(printout t "THIRD SHOT- Use 8-Iron to get across the hazard into the green.")
(bind ?discov3 (- 130 ?w))
(break))))

(if ( < ?desdis2 ?d9i)
then
(if ( > (+ ?desdis2 ?ghalf) ?d9i)
then
(if ( < ?loft ?l9i)
then
(printout t "THIRD SHOT- Use 9-Iron to get across the hazard into the green.")
(bind ?discov3 (- 120 ?w))
(break))))

(if ( < ?desdis2 ?dpw)
then
(if ( > (+ ?desdis2 ?ghalf) ?dpw)
then
(if ( < ?loft ?lpw)
then
(printout t "THIRD SHOT- Use Pitching Wedge to get across the hazard into the green.")
(bind ?discov3 (- 110 ?w))
(break))))

(if ( < ?desdis2 ?dlw)
then
(if ( > (+ ?desdis2 ?ghalf) ?dlw)
then
(if ( < ?loft ?llw)
then
(printout t "THIRD SHOT- Use Lob wedge to get across the hazard into the green.")
(bind ?discov3 (- 65 ?w))
(break)))))
(bind ?remdis3 ( - ( + ?remdis2 ?ha ?sf ?ghalf) ?discov3))
(bind ?desdis3 ( + ?remdis3 0))
(bind ?tothehole4 (- ?tothehole2 ?discov3))
(printout t "Distance remaining is " ?tothehole4 " yards" crlf)
; Fourth shot and Fifth shot if required
;ONE SHOT CASE
(if ( <= ?desdis3 20)
then
(printout t "FOURTH SHOT-Use Putter to shoot the ball into the hole" crlf))

;TWO SHOT CASE
(if ( >= ?desdis3 20)
then
(if ( <= ?desdis3 69)
then
(printout t "FOURTH SHOT- Use putter once to get the ball close to the hole." crlf)
(bind ?tothehole5 (- ?tothehole4 20))
(printout t "FIFTH SHOT-Use Putter again to shoot the ball into the hole" crlf)))

(if ( >= ?desdis3 20)
then
(if ( >= ?desdis3 70)
then
(printout t "FOURTH SHOT- Use Lob wedge once to get the ball close to the hole." crlf)
(bind ?tothehole5 (- ?tothehole4 65))
(printout t "FIFTH SHOT-Use Putter again to shoot the ball into the hole" crlf)))))











