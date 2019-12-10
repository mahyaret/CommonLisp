(defun compress(str)
  (defparameter countConsecutive 0)
  (defparameter compressed "")
  (loop
     for i from 0 to (- (length str) 1)
     do (progn
	  (setq countConsecutive (+ countConsecutive 1))
	  (if (or (>= (+ i 1) (length str))
		  (String/= (aref str i) (aref str (+ i 1))))
	      (progn
		(setq compressed
		      (concatenate 'string
				   compressed
				   (string (aref str i))
				   (write-to-string countConsecutive)))
		(setq countConsecutive 0)))))
  (if (< (length compressed) (length str))
      compressed
      str))
