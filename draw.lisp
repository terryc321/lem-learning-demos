(defpackage :example
  (:use :cl
        :lem
        :lem-sdl2))

(in-package :example)

(defvar *color1* (make-color 176 208 233))
(defvar *color2* (make-color 255 179 41))

(defun draw ()
  (let ((buffer (make-buffer "example")))
    (lem-sdl2/graphics:clear-drawables  buffer)
    (lem-sdl2/graphics:draw-rectangle buffer 100 400 500 500 :filled t :color *color2*)
    (lem-sdl2/graphics:draw-rectangle buffer 500 200 500 500 :filled t :color *color1*)
    
    ;;(lem-sdl2/graphics:draw-points buffer #((50 50)) :color *color2*)
    ;;(display-fullscreen-p t)
    ;;(switch-to-buffer buffer)
    ;;(display-buffer buffer)
    ))



