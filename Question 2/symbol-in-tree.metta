(= (left-child ($node $left $right))
  $left
)

(= (right-child ($node $left $right))
  $right
)

(= (root ($node $left $right))
  $node
)

(=(symbol-exists? $tree $symbol)
  (if (== $symbol (root $tree)) 'True'
    (if (== $symbol (left-child $tree)) 'True'
      (if (== $symbol (right-child $tree)) 'True'
        'False'
      )
    )
  )
)

!(symbol-exists? (a b d) b)
