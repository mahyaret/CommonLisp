(defun rotate(matrix)
  (print "your matrix:")
  (print matrix)
  (defvar n (nth 0 (array-dimensions matrix)))
  (defvar 1st 0)
  (defvar lst 0)
  (defvar offset 0)
  (defvar top 0)
  (loop
     for layer from 0 to (- (/ n 2) 1)
     do (progn
	  (setq 1st layer)
	  (setq lst (- (- n 1) layer))
	  (loop
	     for i from 1st to (- lst 1)
	     do (progn
		  (setq offset (- i 1st))
		  (setq top (aref matrix 1st i))
		  ;left -> top
		  (setf (aref matrix 1st i) (aref matrix(- lst offset) 1st))
		  ;bottom -> left
		  (setf (aref matrix  (- lst offset) 1st) (aref matrix lst (- lst offset)))
		  ;right -> bottom
		  (setf (aref matrix lst (- lst offset)) (aref matrix i lst))
		  ;top -> right
		  (setf (aref matrix i lst) top)
		  ))))
  (print "After rotation:")
  (print matrix)
  )
