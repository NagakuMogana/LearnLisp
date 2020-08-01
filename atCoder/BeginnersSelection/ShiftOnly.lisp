(let ((n (read))
      (r 0)
      (gcd (read)))
  (loop :for i :from 2 :to n
        :do (setf gcd (gcd gcd (read))))
  (loop :while (evenp gcd)
        :do (setf gcd (/ gcd 2))
        :do (incf r))
  (format t "~A~%" r))

