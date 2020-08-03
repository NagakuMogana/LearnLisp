(defun some-sums (n a b)
  (let ((total 0)
        (sum 0))
    (loop :for i :from 1 :to n
          :do (setf sum 0)
          :do (loop :for c :across (format nil "~A" i)
                    :do (setf sum (+ sum (digit-char-p c)))
                    )
          :do (if (and (>= sum a) (<= sum b))
                  (incf total i)))
    total)) 

(defun test (n a b)
  (format t "~A~%" (some-sums n a b)))

(format t "~A~%" (some-sums (read) (read) (read)))