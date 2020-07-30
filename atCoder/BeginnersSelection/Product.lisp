(defun product (a b)
  (if (zerop (mod (* a b) 2))
      "Even"
      "Odd"))

(format t "~A~%" (product (read) (read)))
