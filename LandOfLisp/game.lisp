(defparameter *nodes* '((living-room (you are in the living-room. a wizard is snoring loudly on the couch.))
                       (garden (you are in the beautiful garden. there is a well front of you.))
                       (attic (you are in attic. there is a giant welding torch in the corner.))))

(defparameter *edge* '((living-room (farden west door)
                                    (attic upstairs ladder))
                       (garden (living-room east door))
                       (attic (livinf-room downstairs ladder))))

(defun describe-location (location nodes)
  (cadr (assoc location nodes)))

(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) from here.))