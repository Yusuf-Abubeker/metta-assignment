; Define the function to check if a symbol is in the tree

(= (symbol-in-tree (symbol tree))
   (if (empty? tree)
       false
       (if (= symbol (first tree))
           true
           (or (symbol-in-tree symbol (rest tree))))))

; Example usage
!(symbol-in-tree b (a (b c) d)) ; Expected output: true
!(symbol-in-tree e (a (b c) d)) ; Expected output: false