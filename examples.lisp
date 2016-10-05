"(list apple banana citrus ...) = '(apple banana citrus ...)"
(defparameter *fruits* '(apple banana citrus dates eels fig))
(defparameter *types* '((granny royal) (chiquita other) (lemon grape)))

(defun apple ()
  (car *fruits*))

(defun banana ()
  "(car (cdr *fruits*))"
  (cadr *fruits*))

(defun royal ()
  "(cdr (car *types*))"
  (cdar *types*))

(defun len (l)
  (if l
      (1+ (len (cdr l)))
    0))
