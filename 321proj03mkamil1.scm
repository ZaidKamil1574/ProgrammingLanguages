#lang scheme

; CSC 321 Project 03 - Muhammad Zaid Kamil

;Exercise 1
;Part a
(define s '((banana tree) bark))
(cdr(car s))

;Part b
(define l '(big hairy nose))
(define s2 '(victorian (handkerchief)))
(cdr (cons s2 (cdr l)))
(cons (car l)(cdr (cons s2 (cdr l))))




;Excercise 2
;Part 1
(define (f2c Farenheight)
(+(* Farenheight 1.8) 32))

(f2c 32)
(f2c 80)
(f2c 26)

;part 2
(define (pbutter)
  (car '(peanut-butter)))
(pbutter)

;Exercise 3
;Part a
(define (pos3 p q r)
  (and (positive? p)
       (positive? q)
       (positive? r)
       (* p q r)))
(pos3 5 6 7)

;Part b

(define (negative3 p q r)
  
    (or (negative? p)
	  (negative? q)
	  (negative? r)
      (* p q r)))
  
(negative3 -5 6 7)


;Exercise 4
;Part A
;count no of element in list
(define (length alist) ; define a function
(if (null? alist)
 0
(+ 1(length (cdr alist)))
)); take the item and add to the list. the other part is look. pull off the first item true part
 
(length'())
(length'(1))

(length'(1 2 3))

(length'((1 2) 3))

;Part b : including sublist
(define (length2 alist)
  (cond ((null? alist) 0)
        ((list? alist) (+ (length2 (car alist)) (length2 (cdr alist))))
        (else 1)))  ; atom

> (length2 '(1 (3 4) 1))

;Part c
;sum items in list
(define (sumlist alist) ; define a function
(if (null? alist)
 0
(+ (car alist) (sumlist (cdr alist)))
))
(sumlist '())

(sumlist '(1 2))

(sumlist '(1 2 4))

;part d


;Exercise 5
(define (rev-wrap l ans)
    (if (null? l) ans
        (rev-wrap (cdr l) (cons (car l) ans))
    )
)
(define (my-reverse-wrapper l)
    (rev-wrap l '())
)

(display (my-reverse-wrapper '(1 2 3 4)))
(newline)


;Exercise 6
(define (multiply3 lst)
    (map 
        (lambda (x) (* 3 x)) 
        lst)
)

(display (multiply3 '(4 2 3)))
(newline)

;Exercise 7

;Squaring each item of '(1 2 3)


(define alist-sum
 
(lambda (nums)
(if (null? nums)
0
(+ (expt (car nums) 1)
   (* (sqrt (alist-sum (cdr nums))))))))


(alist-sum (list 2 2 2)) 

