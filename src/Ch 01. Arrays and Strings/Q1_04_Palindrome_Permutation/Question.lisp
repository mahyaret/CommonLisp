(defun palindromep (l)
  (let* ((half (floor (length l) 2))
         (secondhalf (reverse (nthcdr half l))))
    (loop for x in l
          for y in secondhalf
          always (eq x y))))
