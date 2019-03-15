(defun isUnique (str)
  "This function determines if all characters in the string are unique."
  (if (equal (remove-duplicates str) str)
      T))
