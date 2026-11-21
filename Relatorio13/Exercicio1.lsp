(defstruct erva
  nome
  preco-por-grama
  toxicidade)
(defun classifica-erva (erva)
  (cond
    ((>= (erva-toxicidade erva) 7) "veneno")
    ((>= (erva-toxicidade erva) 4) "use com cuidado")
    (t "segura")))
(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))
(defun descreve-erva (erva)
  (format nil
          " Nome: ~a ~% Preco por grama: R$ ~,2f ~% Classificacao: ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))
(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "Maomao vai testar a erva em si mesma antes"
      "Erva liberada para o paciente."))
(defun main ()
  (let ((estoque
         (list
          (make-erva
           :nome "Mate"
           :preco-por-grama 3.50
           :toxicidade 1)
          (make-erva
           :nome "Capim Limao"
           :preco-por-grama 4.00
           :toxicidade 5)
          (make-erva
           :nome "Cocaina";; tecnicamente, estou falando das folhas da planta
           :preco-por-grama 9.50
           :toxicidade 9))))
    (format t "ESTOQUE DE ERVAs")
    (dolist (erva estoque)
      (format t "~%~a~%" (descreve-erva erva))
      (format t " Aviso: ~a~%" (aviso erva)))
    (format t "~%PRECO DA DOSE:~%")
    (format t " Preco de 10 gramas de Mate: R$ ~,2f~%"
            (preco-da-dose (first estoque) 10))))
(main)
