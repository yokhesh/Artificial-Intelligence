                                         ;;Defining the fuzzy variable speed
(deftemplate speed
1 100
((very_low (1 1) (20 0.5) (40 0))
(low (1 0) (20 0.5) (40 1) (50 0.5) (60 0))
(medium (40 0) (50 0.5) (60 1) (70 0.5) (80 0))
(high (60 0) (70 0.5) (80 1) (90 0.5) (100 0))
(very_high (80 0) (90 0.5) (100 1))))

                                        ;;Defining the fuzzy variable distance
(deftemplate distance
10 250
((very_close (10 1) (40 0.5) (60 0))
(close (10 0) (40 0.5) (60 1) (80 0.5) (100 0))
(fair_distance (60 0) (80 0.5) (100 1) (150 0.5) (200 0))
(far (100 0) (150 0.5) (200 1) (225 0.5) (250 0))
(very_far (200 0) (225 0.5) (240 1))))

                                   ;;Defining the fuzzy variable vehicle_Stopping_distance
(deftemplate vehicle_Stopping_distance
0 120
((negligible (0.5 1) (4.5 0.5) (10 0))
(very_less (0.5 0) (4.5 0.5) (10 1) (15 0.5) (20 0))
(less (10 0) (15 0.5) (20 1) (30 0.5) (40 0))
(medium (20 0) (30 0.5) (40 1) (45 0.5) (50 0))
(high (40 0) (45 0.5) (50 1) (62.5 0.5) (75 0))
(very_high (50 0) (62.5 0.5) (75 1) (87.5 0.5) (100 0))
(extremely_high (75 0) (87.5 0.5) (120 1))))

                                     ;;Defining the fuzzy variable friction_coefficient
(deftemplate friction_coefficient
0.1 1
((very_low(0.1 1)(0.2 0.5) (0.3 0))
(low (0.1 0) (0.2 0.5)(0.3 1) (0.4 0.5) (0.5 0))
(medium (0.3 0) (0.4 0.5) (0.5 1) (0.6 0.5) (0.7 0))
(high (0.5 0) (0.6 0.5) (0.7 1) (0.8 0.5) (1 0))
(very_high (0.7 0) (0.8 0.5) (1 1))))

                                     ;;Defining the fuzzy variable obstacle_asideleft
(deftemplate obstacle_asideleft
1 6
((very-small (1 1) (2 0.5) (3 0))
(small (1 0) (2 0.5) (3 1) (3.5 0.5) (4 0))
(medium (3 0) (3.5 0.5) (4 1) (4.5 0.5) (5 0))
(long (4 0) (4.5 0.5) (5 1) (5.5 0.5) (6 0))
(very-long (5 0) (5.5 0.5) (6 1))))

                                     ;;Defining the fuzzy variable obstacle_asideright
(deftemplate obstacle_asideright
1 6
((very-small (1 1) (2 0.5) (3 0))
(small (1 0) (2 0.5) (3 1) (3.5 0.5) (4 0))
(medium (3 0) (3.5 0.5) (4 1) (4.5 0.5) (5 0))
(long (4 0) (4.5 0.5) (5 1) (5.5 0.5) (6 0))
(very-long (5 0) (5.5 0.5) (6 1))))

                          ;;Defining the fuzzy variable probability_that_obstacle_is_present_in_left
(deftemplate probability_that_obstacle_is_present_in_left
0 1
((low (0 1) (0.3 0.5) (0.5 0))
(medium (0 0) (0.4 0.5) (0.5 1) (0.7 0.5) (1 0))
(high (0.5 0) (0.7 0.5) (1 1))))

                          ;;Defining the fuzzy variable probability_that_obstacle_is_present_in_right
(deftemplate probability_that_obstacle_is_present_in_right
0 1
((low (0 1) (0.3 0.5) (0.5 0))
(medium (0 0) (0.4 0.5) (0.5 1) (0.7 0.5) (1 0))
(high (0.5 0) (0.7 0.5) (1 1))))

(defglobal ?*nb1* = 0)
(defglobal ?*nb2* = 0)
(defglobal ?*nnb1* = 0)
(defglobal ?*nnb11* = 0)
(defglobal ?*nnb2* = 0)
(defglobal ?*avs* = 0)
(defglobal ?*avs1* = 0)
(defglobal ?*avs2* = 0)
(defglobal ?*vsd* = 0)

                                                 ;;RULE DEFINITION STARTS FROM HERE
                        ;;Rule for getting the crisp speed,distance and friction coefficient value
(defrule getvalues
(declare (salience 100))
=>
(printout t "Enter the distance to reach the obstacle in meters :(10-250) " crlf)
(bind ?d (read))
(assert (crispdistance ?d))
(printout t "Enter the speed of the vehicle in km/h:(1-100) "crlf)
(bind ?s (read))
(assert (crispspeed ?s))
(printout t "Enter friction coefficient(depends on the road condition):(0.1-1) "crlf)
(bind ?fc (read))
(assert (crispfrictioncoefficient ?fc))
)

                            ;;Rule to fuzzify the obtained crisp input
(defrule Fuzzifydistance_speed_friction_coefficient
(crispdistance ?a)
(crispspeed ?b)
(crispfrictioncoefficient ?c)
   =>
(bind ?d1 (- ?a 0))
(bind ?d2 (+ ?a 0))
(bind ?s3 (- ?b 0))
(bind ?s4 (+ ?b 0))
(bind ?fs1 (- ?c 0))
(bind ?fs2 (+ ?c 0))
(assert (distance (?d1 0) (?a 1) (?d2 0)))
(assert(speed(?s3 0)(?b 1)(?s4 0)))
(assert(friction_coefficient(?fs1 0) (?c 1) (?fs2 0)))
)

                   ;;Rules to determine the stopping distance under normal braking
                             ;;For high and very_high friction coefficient

(defrule distance_after_brake1
(declare (CF 1))
(speed very_low)
(or(friction_coefficient very_high)(friction_coefficient high))
=>
(assert (vehicle_Stopping_distance negligible)))


(defrule distance_after_brake2
(declare (CF 1))
(speed low)
(or(friction_coefficient very_high)(friction_coefficient high))
=>
(assert (vehicle_Stopping_distance very_less)))


(defrule distance_after_brake3
(declare (CF 1))
(speed medium)
(or(friction_coefficient very_high)(friction_coefficient high))
=>
(assert (vehicle_Stopping_distance less)))

(defrule distance_after_brake4
(declare (CF 1))
(speed high)
(or(friction_coefficient very_high)(friction_coefficient high))
=>
(assert (vehicle_Stopping_distance medium)))

(defrule distance_after_brake5
(declare (CF 1))
(speed very_high)
(or(friction_coefficient very_high)(friction_coefficient high))
=>
(assert (vehicle_Stopping_distance high)))

                                               ;;For low and medium friction coefficient

(defrule distance_after_brake6
(declare (CF 0.95))
(speed very_low)
(or(friction_coefficient low)(friction_coefficient medium))
=>
(assert (vehicle_Stopping_distance very_less)))

(defrule distance_after_brake7
(declare (CF 0.9))
(speed low)
(or(friction_coefficient low)(friction_coefficient medium))
=>
(assert (vehicle_Stopping_distance less)))

(defrule distance_after_brake8
(declare (CF 0.85))
(speed medium)
(or(friction_coefficient low)(friction_coefficient medium))
=>
(assert (vehicle_Stopping_distance high)))

(defrule distance_after_brake9
(declare (CF 1))
(speed high)
(or(friction_coefficient low)(friction_coefficient medium))
=>
(assert (vehicle_Stopping_distance very_high)))

(defrule distance_after_brake10
(declare (CF 1))
(speed very_high)
(or(friction_coefficient low)(friction_coefficient medium))
=>
(assert (vehicle_Stopping_distance extremely_high)))

                                           ;;For very low friction coefficient

(defrule distance_after_brake11
(declare (CF 0.6))
(friction_coefficient very_low)
(or(speed very_low)(speed low))
=>
(assert (vehicle_Stopping_distance high)))

(defrule distance_after_brake12
(declare (CF 1))
(friction_coefficient very_low)
(or(speed medium)(speed high) (speed very_high))
=>
(assert (vehicle_Stopping_distance extremely_high)))

  ;; Rules to compare the vehicle stopping distance under normal braking and the distance available to avert the crash
                                 ;; Helps in determining the type of braking required



(defrule distancecompare
(declare(salience -100))
(vehicle_Stopping_distance ?aa)
(crispdistance ?dd)
=>
(bind ?aa2 (moment-defuzzify ?aa))
(printout t "Under normal Braking conditions, The distance required for the vehicle to stop after the brakes are applied is " ?aa2 " metres" crlf)
(if (>= ?aa2 ?dd)
then
(printout t "The vehicle stopping distance under normal braking is greater than the distance left to crash the obstacle" crlf)
(printout t "Therefore,Normal braking is not applicable" crlf)
(assert (Normal braking not applicable))
else
(printout t "The vehicle stopping distance under normal braking is less than the distance left to crash the obstacle" crlf)
(printout t "Therefore,Normal braking is applicable" crlf)
(assert (Normal braking applicable))))

                              ;; RULES FOR DETERMINING THE TYPE OF BRAKING WHERE NORMAL BRAKING IS APPLICABLE 
                                        ;;Set of rules for low and very low friction coefficient

(defrule normal_brake1
(declare(salience -200))
(Normal braking applicable)
(vehicle_Stopping_distance ?aa)
(crispdistance ?dd)
(crispfrictioncoefficient ?c)
=>
(if (= ?*nb1* 0)
then
(if (<= ?c 0.4)
then
(bind ?aa2 (moment-defuzzify ?aa ))
(if (<= (+ ?aa2 50) ?dd)
then
(assert (soft braking is applied))
(printout t "SOFT BRAKING IS APPLIED" crlf crlf)
(assert(The vehicle is secured))
(assert(The vehicle is protected before hitting the obstacle)))

(if (> (+ ?aa2 50) ?dd)
then
(assert (medium braking is applied))
(printout t "MEDIUM BRAKING IS APPLIED" crlf crlf)
(assert(The vehicle is secured))
(assert(The vehicle is protected before hitting the obstacle)))
(bind ?*nb1* (+ 1 ?*nb1*))
(bind ?*nb2* (+ 1 ?*nb2*)))))


                              ;;Set of rules for medium, high and very high friction coefficient
(defrule normal_brake2
(declare(salience -200))
(Normal braking applicable)
(vehicle_Stopping_distance ?aa)
(crispdistance ?dd)
(crispfrictioncoefficient ?c)
=>
(if (= ?*nb2* 0)
then
(if (> ?c 0.4)
then
(bind ?aa2 (moment-defuzzify ?aa ))
(if (> (+ ?aa2 50) ?dd)
then
(assert (hard braking is applied))
(printout t "HARD BRAKING IS APPLIED" crlf crlf)
(assert(The vehicle is secured))
(assert(The vehicle is protected before hitting the obstacle)))
(if (<= (+ ?aa2 50) ?dd)
then
(assert (medium braking is applied))
(printout t "MEDIUM BRAKING IS APPLIED" crlf crlf)
(assert(The vehicle is secured))
(assert(The vehicle is protected before hitting the obstacle)))
(bind ?*nb2* (+ 1 ?*nb2*))
(bind ?*nb1* (+ 1 ?*nb1*)))))

(defrule getting_certainty_value
?cf <- (The vehicle is secured)
=>
(printout t "The certainty of the output is " (get-cf ?cf) crlf))
                         ;; RULES FOR DETERMINING THE TYPE OF BRAKING WHERE NORMAL BRAKING IS NOT APPLICABLE 
                                    ;;Set of rules for medium, high and very high friction coefficient
(defrule no_normal_brake1
(declare(salience -200))
(Normal braking not applicable)
(vehicle_Stopping_distance ?aa)
(crispdistance ?dd)
(crispfrictioncoefficient ?c)
=>
(if (= ?*nnb1* 0)
then
(if (> ?c 0.4)
then
(bind ?aa2 (moment-defuzzify ?aa ))
(printout t "Crash Imminent. Vehicle cannot be stopped before the crash by using normal Brakes." crlf crlf)
(printout t "Additional Information Required" crlf)
(printout t "Does the car have Anti-lock Braking system (yes/no)" crlf)
(bind ?abs(read))
(if (eq ?abs yes)
then
(printout t "Brakes are applied as hard as possible. The Anti braking system will avoid any possible skid" crlf crlf)
(assert (Brakes are applied as hard as possible. The Anti braking system will avoid any possible skid)CF 0.7)
(assert(The vehicle is protected before hitting the obstacle)CF 0.7)
(assert(The vehicle is secured)CF 0.7)
else
(printout t "Hard braking is applied and released alternatively with a gap of one second in between. Continue this until vehicle stops" crlf crlf)
(assert (Hard braking is applied and released alternatively with a gap of one second in between. Continue this until vehicle stops)CF 0.6)
(assert(The vehicle is protected before hitting the obstacle)CF 0.6))
(assert(The vehicle is secured)CF 0.6)
(bind ?*nnb1* (+ 1 ?*nnb1*))
(bind ?*nnb2* (+ 1 ?*nnb2*)))))


                                 ;;Set of rules for low and very low friction coefficient
(defrule no_normal_brake2
(declare(salience -200))
(Normal braking not applicable)
(vehicle_Stopping_distance ?aa)
(crispdistance ?dd)
(crispfrictioncoefficient ?c)
=>
(if (= ?*nnb2* 0)
then
(if (<= ?c 0.4)
then
(printout t "The car might skid due to low friction coefficient if hard braking is employed" crlf)
(printout t "It is not possible to stop the vehicle using normal brakes" crlf)
(printout t "This is a special case and therefore additional information is required to move the vehicle to adjacent lane" crlf crlf)
(assert (no lane change required afterwards))
(printout t "What is the probability that there is an obstacle to the left of the vehicle (low/medium/high)" crlf)
(bind ?moveasideleft (read))
(if (eq ?moveasideleft low)
then
(assert( probability_that_obstacle_is_present_in_left low)CF 0.5))
(if (eq ?moveasideleft medium)
then
(assert( probability_that_obstacle_is_present_in_left medium)CF 0.5))
(if (eq ?moveasideleft high)
then
(assert( probability_that_obstacle_is_present_in_left high)CF 0.5))

(printout t "What is the probability that there is an obstacle to the right of the vehicle (low/medium/high)" crlf)
(bind ?moveasideright (read))
(if (eq ?moveasideright low)
then
(assert( probability_that_obstacle_is_present_in_right low)CF 0.5))
(if (eq ?moveasideright medium)
then
(assert( probability_that_obstacle_is_present_in_right medium)CF 0.5))
(if (eq ?moveasideright high)
then
(assert( probability_that_obstacle_is_present_in_right high)CF 0.5))
(bind ?*nnb2* (+ 1 ?*nnb2*))
(bind ?*nnb1* (+ 1 ?*nnb1*)))))

;; Rules for determining the side of the lane to which the vehicle has to shift in case of low and very-low friction coefficient
(defrule no_normal_brake2_1
(declare (CF 0.5))
(probability_that_obstacle_is_present_in_left ?a)
(probability_that_obstacle_is_present_in_right ?b)
(not(dont need if already moved to another lane))
=>
(if (= ?*nnb11* 0)
then
(bind ?l (moment-defuzzify ?a ))
(bind ?r (moment-defuzzify ?b ))
(if (< ?l ?r)
then
(printout t "The vehicle is shifted to the lane on the left side and then medium braking is applied"crlf)
(assert (The vehicle is shifted to the lane on the left side and then medium braking is applied))
(assert(The vehicle is secured)))
(if (> ?l ?r)
then
(printout t "The vehicle is shifted to the lane on the right side and then medium braking is applied"crlf)
(assert (The vehicle is shifted to the lane on the right side and then medium braking is applied))
(assert(The vehicle is secured)))
(if (= ?l ?r)
then
(printout t "The probability of having obstacle on both sides are same" crlf)
(printout t "Therefore, moving to left lane is preffered as the traffic tends to come in through the right lane in highways" crlf)
(printout t "The vehicle is shifted to the lane on the left side and then medium braking is applied" crlf)
(assert (Shift the vehicle to the lane on the left side and then hit the hard brakes)CF 0.8)
(assert(The vehicle is secured)CF 0.8)
(assert (no lane change required afterwards)))
(bind ?*nnb11* (+ 1 ?*nnb11*))))


               ;; Rules for determining the side of the lane to which the vehicle has to shift after it is stopped 
                          ;; The below rules is not required if the vehicle has already shifted to another lane
                                   ;; Determines the probability of the obstacle on left and right side
(defrule after_vehicle_stops
(declare(salience -300))
(The vehicle is protected before hitting the obstacle)
=>
(if (= ?*avs* 0)
then
(assert(dont need if already moved to another lane))
(printout t "The vehicle has avoided the obstacle and has been stopped" crlf)
(printout t "Additional informations are required to again move the vehicle" crlf crlf)

(printout t "What is the probability that there is an obstacle to the left of the vehicle (low/medium/high)" crlf)
(bind ?moveasideleft (read))
(if (eq ?moveasideleft low)
then
(assert( probability_that_obstacle_is_present_in_left low)))
(if (eq ?moveasideleft medium)
then
(assert( probability_that_obstacle_is_present_in_left medium)))
(if (eq ?moveasideleft high)
then
(assert( probability_that_obstacle_is_present_in_left high)))

(printout t "What is the probability that there is an obstacle to the right of the vehicle (low/medium/high)" crlf)
(bind ?moveasideright (read))
(if (eq ?moveasideright low)
then
(assert( probability_that_obstacle_is_present_in_right low)))
(if (eq ?moveasideright medium)
then
(assert( probability_that_obstacle_is_present_in_right medium)))
(if (eq ?moveasideright high)
then
(assert( probability_that_obstacle_is_present_in_right high)))
(bind ?*nnb1* (+ 1 ?*avs*))))

                                ;; Rules to determine the side of the lane shift.
                    ;; Rules for getting the length of the obstacle on left and right side
(defrule after_vehicle_stops1
(probability_that_obstacle_is_present_in_left ?a)
(probability_that_obstacle_is_present_in_right ?b)
(not(no lane change required afterwards))
=>
(if (= ?*avs1* 0)
then
(bind ?l (moment-defuzzify ?a ))
(bind ?r (moment-defuzzify ?b ))
(if (< ?l ?r)
then
(printout t "The vehicle is shifted to the left lane and moved forward" crlf)
(assert (The vehicle is shifted to the left lane and moved forward)))
(if (> ?l ?r)
then
(printout t "The vehicle is shifted to the right lane and moved forward" crlf)
(assert (The vehicle is shifted to the right lane and moved forward)))

(if (= ?l ?r)
then

(printout t "What is length of the obstacle on left side (very-small/small/medium/long/very-long) ?" crlf)
(bind ?obstaclelengthleft (read))
(if (eq ?obstaclelengthleft very-small)
then
(assert ( obstacle_asideleft very-small)))
(if (eq ?obstaclelengthleft small)
then
(assert ( obstacle_asideleft small)))
(if (eq ?obstaclelengthleft medium)
then
(assert ( obstacle_asideleft medium)))
(if (eq ?obstaclelengthleft long)
then
(assert ( obstacle_asideleft long)))
(if (eq ?obstaclelengthleft very-long)
then
(assert ( obstacle_asideleft very-long)))
(printout t "What is length of the obstacle on right side (very-small/small/medium/long/very-long) ?" crlf)
(bind ?obstaclelengthright (read))
(if (eq ?obstaclelengthright very-small)
then
(assert ( obstacle_asideright very-small)))
(if (eq ?obstaclelengthright small)
then
(assert ( obstacle_asideright small)))
(if (eq ?obstaclelengthright medium)
then
(assert ( obstacle_asideright medium)))
(if (eq ?obstaclelengthright long)
then
(assert ( obstacle_asideright long)))
(if (eq ?obstaclelengthright very-long)
then
(assert ( obstacle_asideright very-long))))
(bind ?*nnb1* (+ 1 ?*avs1*))))

              ;;Below rule is required if the probability of facing an obstacle on left and right side is equal
(defrule after_vehicle_stops2
(declare(salience -400))
(obstacle_asideleft ?a)
(obstacle_asideright ?b)
=>
(if (= ?*avs2* 0)
then
(bind ?crispobstaclelengthright (moment-defuzzify ?b))
(bind ?crispobstaclelengthleft (moment-defuzzify ?a))
(if (< ?crispobstaclelengthright ?crispobstaclelengthleft)
then
(printout t "The vehicle is moved backwards until it gets cleared of obstacle on right " crlf)
(printout t "Now, The vehicle is shifted to the right lane and moved forward" crlf)
(assert (The vehicle is moved backwards until it gets cleared of obstacle on right and then shifted to right lane)))
(if (> ?crispobstaclelengthright ?crispobstaclelengthleft)
then
(printout t "The vehicle is moved backwards until it gets cleared of obstacle on left " crlf)
(printout t "The vehicle is shifted to the left lane and moved forward" crlf)
(assert (The vehicle is moved backwards until it gets cleared of obstacle on left and then shifted to left lane)))
(if (= ?crispobstaclelengthright ?crispobstaclelengthleft)
then
(printout t "The length of the obstacle in both the lanes are the same"crlf)
(printout t "Therefore, moving to left lane is preffered as the traffic tends to come in through the right lane in highways" crlf)
(printout t "The vehicle is shifted to the left lane and moved forward" crlf)
(assert (The vehicle is moved backwards until it gets cleared of obstacle on left and then shifted to left lane)))
(bind ?*nnb1* (+ 1 ?*avs2*))))