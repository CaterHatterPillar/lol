;;; Define global variables (Lisp convention uses asterisks -
;;; 'earmuffs' - to indicate global variables). defvar does not
;;; overwrite variable contents if existant.
(defvar *small* 1)
(defvar *big* 100)

(defun guess ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess)))
  (guess))

(defun bigger ()
  (setf *small* (1+ (guess)))
  (guess))
