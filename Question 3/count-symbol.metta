(= (left-child ($node $left $right))
  $left
)

(= (right-child ($node $left $right))
  $right
)

(= (root ($node $left $right))
  $node
)

(= (null? $node)
  (if (== () $node)
    (== 3 3) ; i used this expression to return 'True'
    (== 3 4) ; false
  )
)

(= (leaf? $node)
  (if (and (null? (left-child $node)) (null? (right-child $node)))
    (== 3 3) ;true
    (== 3 4) ;false
  )
)

(= (count-symbol $tree $symbol)
  (if (leaf? $tree)
    (if (== $tree $symbol) 1 0)
    (+ (count-symbol (left-child $tree) $symbol) (count-symbol (right-child $tree) $symbol))
  )
)

!(count-symbol (a b d) b)