; Define the function for calculating max depth
(= (max-depth (tree))
  (if (empty? tree)
      0
      (max (map (lambda (x) (if (list? x) (+ 1 (max-depth x)) 0)) tree))))


! (max-depth (a (b) (c))) ; Expected output: 2