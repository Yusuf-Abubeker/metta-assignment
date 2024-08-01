(= (leftchild ($node $left $right))
  $left
)

(= (rightchild ($node $left $right))
  $right
)

(= (null? $node)
  (if (==() $node)
    (== 3 3) ; this means 'true' i used this becuase metta can not understand (and(true)(true)) code directly
    (== 3 4) ;false
  )
)

(= (leaf? $node)
  (if (and (null? (leftchild $node)) (null? (rightchild $node)))
    (== 3 3) ;true
    (== 3 4) ;false
  )
)

; Define the maxdepth function
(= (maxdepth $tree)
  (if (leaf? $tree)
    1
    (+ 1 (max (maxdepth (leftchild $tree)) (maxdepth (rightchild $tree))))
  )
)

!(maxdepth (a b d))

