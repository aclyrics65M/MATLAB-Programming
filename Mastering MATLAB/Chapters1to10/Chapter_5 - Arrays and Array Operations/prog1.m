; Name: Faraz Mamaghani
; RIT Username: fxm3839
; CSCI 344: Programming Language Concepts
; Instructor: Scott Johnson
; File Name: prog1.smt
; Programming Assignment 2 (uSmallTalk)
; Date: 3/25/2021

; Goal of Assignment: Create six different classes in uSmallTalk
; Classes are: Shape, Circle, Rectangle, Square, Triangle, Equilateral 

; Shape Class
(class Shape Object
     (perimeter area) 

     (method setInitialShape:: (perimeter_val area_val)
          (set perimeter perimeter_val)
          (set area area_val)
           self)

     (method setPerimeter: (perimeter_val)
          (set perimeter (asFloat perimeter_val))
     )     

     (method setArea: (area_val) 
          (set area (asFloat area_val))
     )

     (method getPerimeter () perimeter)

     (method getArea () area)
  
     (class-method initialShape:: (perimeter_val area_val)
          (setInitialShape:: (new self) perimeter_val area_val) 
     )  
)


; Circle Class
; Inherits from Shape
(class Circle Shape
      (radius)

      (method setRadius: (radius_value)
             (set radius (asFloat radius_value))
             (setPerimeter: self (* (* (asFloat 2) (asFloat radius)) (asFloat (/ 22 7))))
             (setArea: self (* (asFloat (* radius radius)) (asFloat (/ 22 7))))
      )

      (method getRadius () radius)

      (class-method initialCircle: (radius_value)
            (setRadius: (initialShape:: super 0 0) radius_value)
      )

)


; Rectangle Class
; Inherits from Shape
(class Rectangle Shape
      (length width)

      (method setLengthWidth:: (length_value width_value)
		(set length (asFloat length_value))
		(set width (asFloat width_value))
		(setLength: self length_value)
		(setWidth:  self width_value)
		self
       )

      (method setLength: (length_value)
              (set length (asFloat length_value))
              (setPerimeter: self (+ (* (asFloat 2) (asFloat length)) (* (asFloat 2) (asFloat width))))
              (setArea: self (* (asFloat length) (asFloat width) ))
      )

      (method setWidth: (width_value)
              (set width (asFloat width_value))
              (setPerimeter: self (+ (* (asFloat 2) (asFloat length)) (* (asFloat 2) (asFloat width))))
              (setArea: self (* (asFloat length) (asFloat width) ))
      )

      (method getLength () length)

      (method getWidth () width)

      (class-method initialRectangle:: (length_value width_value)
            (setLengthWidth:: (initialShape:: super 0 0) length_value width_value)
      )
)


;Square Class
;Inherits from the Rectangle
(class Square Rectangle
       ()

       (method createSquare:square (side_value)
               (set length side_value)
               (set width side_value)
               (setPerimeter: self (calculateRectanglePerimeter self))
               (setArea: self (calculateRectangleArea self))
               self
       )

       (method setSide: (side_value)
               (setLengthWidth:: self side_value side_value)
       )

       (method getSide () length) 

       (class-method initialSquare: (side_value) 
            (initialRectangle:: super side_value side_value)
       )
)


; Triangle Class
(class Triangle Shape
      (side1 side2 side3 S)

      (method createTriangle::: (side_one side_two side_three)      
              (set side1 (asFloat side_one))
              (set side2 (asFloat side_two))
              (set side3 (asFloat side_three))
              (calculateTrianglePerimeter self)
              (calculateTriangleArea self)
               self)

      (method setSide1: (side_one)
              (set side1 (asFloat side_one))
              (calculateTrianglePerimeter self)
              (calculateTriangleArea self)
      )

      (method setSide2: (side_two)
              (set side2 (asFloat side_two))
              (calculateTrianglePerimeter self)
              (calculateTriangleArea self)
      )

      (method setSide3: (side_three)
              (set side3 (asFloat side_three))
              (calculateTrianglePerimeter self)
              (calculateTriangleArea self)
      )

      (method getSide1 () side1)

      (method getSide2 () side2)

      (method getSide3 () side3)

      (method calculateTrianglePerimeter ()
              (setPerimeter: self (+ (+ (asFloat side1) (asFloat side2)) (asFloat side3)))
      )

      (method calculateTriangleArea () (locals S)
              (set S (asFloat (/ (+ side1 (+ side2 side3)) 2) ) )
              (set segA (asFloat (- S side1)))
              (set segB (asFloat (- S side2)))
              (set segC (asFloat (- S side3)))
              (setArea: self (sqrt (asFloat (* S (* segA (* segB segC) )))))
       )

      (class-method initialTriangle::: (side_one side_two side_three)
             (createTriangle::: (initialShape:: super 0 0) side_one side_two side_three) 
      )
)


;Equilateral Class
;Inherits from Triangle
(class Equilateral Triangle
       ()

       (method getSide () side1)

       (method setSide: (side_value)
               (set side1 (asFloat side_value))
               (set side2 (asFloat side_value))
               (set side3 (asFloat side_value))
               (calculateTrianglePerimeter self)
               (calculateTriangleArea self)
       )

       (class-method initialEquilateralTriangle: (side_value)
		(initialTriangle::: super side_value side_value side_value)
       )

)

; Testing Section

; Class Shape
(val shape1 (initialShape:: Shape 30 50))
(getPerimeter shape1)
(getArea shape1)
(setPerimeter: shape1 55)
(setArea: shape1 40)
(getPerimeter shape1)
(getArea shape1)

; Class Circle
(val circle1 (initialCircle: Circle 8))
(getPerimeter circle1)
(getArea circle1)
(setRadius: circle1 11)
(getRadius circle1)
(getPerimeter circle1)
(getArea circle1)

; Class Rectangle
(val rectangle1 (initialRectangle:: Rectangle 10 12))
(getPerimeter rectangle1)
(getArea rectangle1)
(setLength: rectangle1 5)
(getPerimeter rectangle1)
(getArea rectangle1)
(setWidth: rectangle1 15)
(getPerimeter rectangle1)
(getArea rectangle1)


; Class Square
(val square1 (initialSquare: Square 15))
(getSide square1)
(getPerimeter square1)
(getArea square1)
(setSide: square1 20)
(getSide square1)
(getPerimeter square1)
(getArea square1)

; Class Triangle
(val triangle1 (initialTriangle::: Triangle 5 8 10))
(getSide1 triangle1)
(getSide2 triangle1)
(getSide3 triangle1)
(getPerimeter triangle1)
(getArea triangle1)
(setSide1: triangle1 7)
(getPerimeter triangle1)
(getArea triangle1)
(setSide2: triangle1 9)
(getPerimeter triangle1)
(getArea triangle1)
(setSide3: triangle1 11)
(getPerimeter triangle1)
(getArea triangle1)

; Class Equilateral
(val equilateral1 (initialEquilateralTriangle: Equilateral 5))
(getSide equilateral1)
(getPerimeter equilateral1)
(getArea equilateral1)
(setSide: equilateral1 10)
(getPerimeter equilateral1)
(getArea equilateral1)






% Junk Yard Code

      (method createCircle:circle (radius_value)
             (set radius (asFloat radius_value))
             (setPerimeter: self (calculateCirclePerimeter self))
             (setArea: self (calculateCircleArea self))
              self)

      (method calculateCircleArea () 
             (* (asFloat (squared radius)) (asFloat (/ 22 7)) )) 

      (method calculateCirclePerimeter ()
             (* (asFloat 2) (* (asFloat (squared radius)) (asFloat (/ 22 7)) )) )
             
             
                   (method createRectangle:: (length_value width_value) 
              (set length (asFloat length_value))
              (set width (asFloat width_value))
              (setPerimeter: self (calculateRectanglePerimeter self))
              (setArea: self (calculateRectangleArea self))
               self
       )

       
             (method calculateRectangleArea ()
              (* (asFloat length) (asFloat width))

      (method calculateRectanglePerimeter ()
              (+ (* (asFloat 2) (asFloat length) ) (* (asFloat 2) (asFloat width) ) ))
              
              
                     (method createEqualTriangle:equilateral (side_value)
               (set side1 side_value)
               (set side2 side_value)
               (set side3 side_value)
               self        
       )

