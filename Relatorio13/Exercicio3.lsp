(defstruct garota-magica
  nome
  escuridao
  bruxas)
(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))
(defun total-de-bruxas (grupo)
  (reduce #'+
          (mapcar #'garota-magica-bruxas grupo)
          :initial-value 0))
(defun purifica (g quantidade)
  (make-garota-magica
   :nome (garota-magica-nome g)
   :escuridao
   (if (>= quantidade (garota-magica-escuridao g))
       0
       (- (garota-magica-escuridao g) quantidade))
   :bruxas (garota-magica-bruxas g)))
(defun main ()
  (let ((grupo
         (list
          (make-garota-magica
           :nome "Saitama"
           :escuridao 30
           :bruxas 5)
          (make-garota-magica
           :nome "Lisa Lisa"
           :escuridao 50
           :bruxas 8)
          (make-garota-magica
           :nome "Magin Boo"
           :escuridao 70
           :bruxas 3))))
    (format t "~%GRUPO ORIGINAL:~%")
    (format t "Escuridao total: ~a~%"
            (escuridao-total grupo))
    (format t "Total de bruxas derrotadas: ~a~%"
            (total-de-bruxas grupo))
    (let* ((nova-garota
            (make-garota-magica
             :nome "Don Pollo"
             :escuridao 20
             :bruxas 6))
           (novo-grupo (cons nova-garota grupo)))
      (format t "~%NOVO GRUPO:~%")
      (format t "Escuridao total do grupo original: ~a~%"
              (escuridao-total grupo))
      (format t "Escuridao total do novo grupo: ~a~%"
              (escuridao-total novo-grupo)))
    (let* ((original (first grupo))
           (nova (purifica original 20)))
      (format t "~%PURIFICACAO:::~%")
      (format t "Garota: ~a~%"
              (garota-magica-nome original))
      (format t "Escuridao original: ~a~%"
              (garota-magica-escuridao original))
      (format t "Escuridao depois da purificacao: ~a~%"
              (garota-magica-escuridao nova)))))
(main)
