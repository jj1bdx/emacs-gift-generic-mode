;; gift-generic-mode.el
;; Emacs Generic Mode for Moodle GIFT format files

;; The MIT License (MIT)
;; Copyright © 2016 Kenji Rikitake <kenji.rikitake@acm.org>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the “Software”), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.

(require 'generic-x)

(define-generic-mode
  'gift-generic-mode
  '("//")
  nil
  '(
    ;; escaping character
    ("\\\\." . 'font-lock-string-face)
    ;; question name displayed as keywords
    ("::.*::" . 'font-lock-keyword-face)
    ;; single character operators
    ;; Note: "{#" is taken care as "{" and "#"
    ("=" . 'font-lock-builtin-face)
    ("~" . 'font-lock-builtin-face)
    ("%" . 'font-lock-builtin-face)
    ("#" . 'font-lock-builtin-face)
    ("{" . 'font-lock-builtin-face)
    ("}" . 'font-lock-builtin-face)
    ("->" . 'font-lock-builtin-face)
    ;; text format attribute
    ("\\[.*\\]" . 'font-lock-keyword-face)
    ;; category
    ("^$CATEGORY:". 'font-lock-keyword-face)
    )
  ;; file extensions: .gift or .gift.txt
  '("\\.gift\\'" "\\.gift\\.txt\\'")
  nil
  ;; docstring
  "A mode for Moodle GIFT format files"
  )

(provide 'gift-generic-mode)
