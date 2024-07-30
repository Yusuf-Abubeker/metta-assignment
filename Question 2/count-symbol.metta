; Define the function to count occurrences of a symbol in the tree
(= (count-symbol (symbol tree))
   (if (empty? tree)
       0
       (if (= symbol (first tree))
           (+ 1 (count-symbol symbol (rest tree)))
           (count-symbol symbol (rest tree)))))

; Example usage
!(count-symbol b (a (b b) (c b))) ; Expected output: 3
(count-symbol d (a (b b) (c b))) ; Expected output: 0