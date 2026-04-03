;; Highlight queries for jj revset language

;; Functions
(function
  (strict_identifier) @function)

;; Keyword arguments
(keyword_argument
  (strict_identifier) @variable.parameter)

;; String patterns (e.g. exact:, substring:, glob:)
(string_pattern
  (strict_identifier) @keyword)

;; Program modifier (e.g. all:, any:)
(program_modifier
  (strict_identifier) @keyword)

;; Strings
(string_literal) @string
(raw_string_literal) @string

;; Identifiers
(identifier) @variable
(strict_identifier) @variable

;; Operators
[
  (union_op)
  (intersection_op)
  (difference_op)
  (negate_op)
] @operator

;; Range operators
[
  (dag_range_op)
  (dag_range_pre_op)
  (dag_range_post_op)
  (dag_range_all_op)
  (range_op)
  (range_pre_op)
  (range_post_op)
  (range_all_op)
] @operator

;; Traversal operators
[
  (parents_op)
  (children_op)
] @operator

;; Special operators
(at_op) @operator
(pattern_kind_op) @punctuation.delimiter

;; Delimiters
[
  "("
  ")"
] @punctuation.bracket

"," @punctuation.delimiter
