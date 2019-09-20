(setf lbound nil)
(setf ubound nil)
(setf guess nil)
(defun take-n () "Take a number between lbound and ubound"
       ;(format t "(~a, ~a)" lbound ubound);; for debug, uncomment this line
       (+ lbound (random (- ubound lbound) (make-random-state t))))
(defun guess-my-number () "Initial a guess-my-number session"
       (setf lbound 0)
       (setf ubound 100)
       (setf guess (take-n))
       guess)
(defun smaller () "Downward number range"
       (setf ubound (- guess 1))
       (setf guess (take-n))
       guess)
(defun bigger () "Upward number range"
       (setf lbound (+ guess 1))
       (setf guess (take-n))
       guess)
