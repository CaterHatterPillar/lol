(defun guess ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess)))
  (guess))

(defun bigger ()
  (setf *small* (1+ (guess)))
  (guess))

(defun welcome ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (print "The Lisp mothership says: welcome to a guessing game
          authored in Common Lisp. Please come up with a number
          between 1 and 100 for the computer to guess. Be wary of not
          speaking the number loudly so that the machine might hear
          you. Use guess, smaller, bigger and welcome functions to control
          the game. Best of luck to you."))

(welcome)
