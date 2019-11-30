(defun replaceSpaces (str len)
  "This function replaces the spaces with %20."
  (with-output-to-string (out)
    (loop for old-pos = 0 then (+ pos 1)
          for pos = (search " " str
                            :start2 old-pos
			    :end2 len
                            :test #'char=)
          do (write-string str out
                           :start old-pos
                           :end (or pos len))
          when pos do (write-string "%20" out)
          while pos)))

