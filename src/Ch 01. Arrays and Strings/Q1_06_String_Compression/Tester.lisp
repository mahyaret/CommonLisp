(load "Question.lisp")
(defvar str)
(setq str (string "paaale"))
(format t "~A => ~A~%" str (compress str))
(write t)
(setq str (string "aabcccccaaa"))
(format t "~A => ~A~%" str (compress str))
(write t)
