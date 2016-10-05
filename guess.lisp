(defun guess ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess)))
  (guess))

(defun bigger ()
  (setf *small* (1+ (guess)))
  (guess))

(defun revenge ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess))

(print "Welcome to guessing game. Please come up with a number between
  1 and 100 for Lisp to guess. Use 'smaller', 'bigger', and 'revenge'
  functions to control the game.")
(print (revenge))
