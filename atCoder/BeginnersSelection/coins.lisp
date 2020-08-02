(defun coins (a b c x)
  (let ((res 0)
        (total 0))
    (loop :for i :from 0 :to a
          :do
             (loop :for j :from 0 :to b
                   :do
                   (loop :for k :from 0 :to c
                         :do (setf total (+ (* 500 i) (* 100 j) (* 50 k)))
                         :do (if (= total x) (incf res)))))
    res))

(format t "~A~%" (coins (read) (read) (read) (read)))
