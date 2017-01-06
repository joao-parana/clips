;;; http://sequoia.ict.pwr.wroc.pl/~witold/ai/CLIPS_tutorial/CLIPS_tutorial_1.html

(defrule petrol-no
	(starter-turning yes)
	(petrol no)
	=>
	(assert (solution-is buy-petrol))
	(printout t "solution is to buy petrol" crlf))


(defrule petrol-yes
    (starter-turning yes)
    (petrol yes)
    =>
    (assert (solution-is call-emergency))
	(printout t "solution is to call emergency" crlf))

(defrule lights-working-no
    (starter-turning no)
    (lights-working no)
    =>
    (assert (solution-is charge-battery))
    (printout t "solution is to charge battery" crlf))

(defrule terminals-clean-yes
    (starter-turning no)
    (lights-working yes)
	(solenoid-click yes)
	(terminals-clean yes)
    =>
    (assert (solution-is replace-starter))
    (printout t "solution is to replace starter" crlf))

(defrule terminals-clean-no
    (starter-turning no)
    (lights-working yes)
    (solenoid-click yes)
    (terminals-clean no)
    =>
    (assert (solution-is clean-terminals))
    (printout t "solution is to clean terminals" crlf))

(defrule solenoid-fuse-ok-yes
    (starter-turning no)
    (lights-working yes)
    (solenoid-click no)
    (solenoid-fuse-ok yes)
    =>
    (assert (solution-is replace-solenoid))
    (printout t "solution is to replace solenoid" crlf))
