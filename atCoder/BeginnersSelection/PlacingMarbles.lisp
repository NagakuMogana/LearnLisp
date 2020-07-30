(defun placing-marbles (s)
  (let ((counter 0))
    (loop :for c :across s
          :do (if (string= c "1") (incf counter)))
    counter))

(format t "~A~%" (placing-marbles (read-line)))