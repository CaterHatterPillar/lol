(load "ut.lisp")

(expect_nonequal '(1) '1)

;; same as: (list apple banana citrus ...)
(defparameter *fruits* '(apple banana citrus dates eels fig))
(defparameter *types* '((granny royal) (chiquita other) (lemon grape)))

(expect_equal (car *fruits*) 'apple)
(expect_equal (cadr *fruits*) 'banana) ; same as: (car (cdr *fruits*))
(expect_equal (cdar *types*) 'royal) ; same as: (cdr (car *types*))
;; ^ Expectation fails. I don't understand why (cdar *types*) returns
;; (royal) and not royal

(defun len (l)
  (if l
      (1+ (len (cdr l)))
    0))

(expect_equal (len ()) 0)
(expect_equal (len '(a b c)) 3)
(expect_equal (len '(a b (c d e))) 3)
