(defun carmichael (x) (mod (expt x 4) 15))
(defun start (x) (mod (carmichael x) 6))
(defun end (x) (+ (mod (carmichael x) -5) 8))

(defun fizz-buzz (x) (if (eq 1 (carmichael x)) x (subseq "FizzBuzz" (start x) (end x))))

(dotimes (i 100) (format t "~a " (fizz-buzz (+ i 1))))
