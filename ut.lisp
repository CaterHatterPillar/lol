(defun expect_equal (a b)
  (unless (eq a b)
    (format t "Expectation failed! ~S != ~S~%" a b))) ; 't' prints to stdout

(defun expect_nonequal (a b)
  (when (eq a b)
    (format t "Expectation failed! ~S == ~S~%" a b))) ; 't' prints to stdout
