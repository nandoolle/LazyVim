;; Comments - Apply spell checking to all comments
(comment) @spell

;; Strings - Apply spell checking to string literals
(string) @spell
(template_string) @spell

;; Documentation - Apply spell checking to JSDoc comments
(comment
  [(comment_content) @spell])

;; Names and identifiers - optionally check variable/function/class names
; Uncomment these if you want spell checking in code identifiers
; (property_identifier) @spell  ; object properties
; (identifier) @spell           ; variables, functions, etc.
; (type_identifier) @spell      ; type names
; (class_name) @spell          ; class names