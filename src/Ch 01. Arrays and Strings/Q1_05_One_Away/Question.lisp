(defun oneEditReplace(first second)
  (defparameter returnResult T)
  (defparameter foundDifference NIL)
  (loop for i from 0 to (- (length first) 1)
     do (if (String/= (aref first i) (aref second i))
	    (progn (if foundDifference
		       (progn (setq returnResult NIL)
			      (return)))
		   (setq foundDifference T))))
  returnResult)
(defun oneEditInsert(first second)
  (defparameter returnResult T)
  (defparameter index1 0)
  (defparameter index2 0)
  (loop while (and (< index2 (length second)) (< index1 (length first)))
       do (if (String/= (aref first index1) (aref second index2))
	      (progn (if (/= index1 index2)
			 (progn (setq returnResult NIL)
				(return)))
		     (setq index2 (+ index2 1)))
	      (progn (setq index1 (+ index1 1))
		     (setq index2 (+ index2 1))))
       )
  returnResult)
(defun oneEditAway(first second)
  (if (equal (length first) (length second))
      (oneEditReplace first second)
      (if (= (+ (length first) 1) (length second))
	  (oneEditInsert first second)
	  (if (= (- (length first) 1) (length second))
	      (oneEditInsert second first)))))