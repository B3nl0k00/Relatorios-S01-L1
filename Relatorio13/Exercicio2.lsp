(defstruct criatura
  nome
  bioma
  profundidade
  perigo)
(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva "Agressiva")
    (:leviata "Leviata: mantenha distancia")
    (otherwise "Desconhecido")))
(defun descreve-criatura (c)
  (format nil
          " Nome: ~a ~% Bioma: ~a ~% Profundidade: ~a metros ~% Perigo: ~a~%"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))
(defun abaixo-de (metros catalogo)
  (remove-if-not
   (lambda (c)
     (> (criatura-profundidade c) metros))
   catalogo))
(defparameter *catalogo*
  (list
   (make-criatura
    :nome "Boomerangue"
    :bioma "Recifes seguros"
    :profundidade 50
    :perigo :inofensiva)
   (make-criatura
    :nome "Ichthyosaur"
    :bioma "Floresta de algas"
    :profundidade 150
    :perigo :agressiva)
   (make-criatura
    :nome "Leviathan";; senhores, tenho medo do que pode acontecer, ja perdi 3 submarinos para eles
    :bioma "Montanhas"
    :profundidade 600
    :perigo :leviata)
   (make-criatura
    :nome "Ghost Leviathan"
    :bioma "Zona morta"
    :profundidade 1200
    :perigo :leviata)
   (make-criatura
    :nome "Headcrab";; deu vontade de colocar half life
    :bioma "Cavernas"
    :profundidade 5
    :perigo :agressiva)))
(defun main ()
  (format t "~%CATALOGO COMPLETO:~%")
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))
  (format t "~%CRIATURAS ABAIXO DE 500 METROS:~%")
  (let ((resultado (abaixo-de 500 *catalogo*)))
    (dolist (texto (mapcar #'descreve-criatura resultado))
      (format t "~a~%" texto))
    (format t "~%Quantidade de criaturas: ~a~%"
            (length resultado))))
(main)
