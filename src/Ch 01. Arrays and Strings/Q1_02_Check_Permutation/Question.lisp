(defun isPermutation (str1 str2)
  "This function determines if one string is a permutation of the other."
  (string= (sort str1 #'string<) (sort str2 #'string<)))

