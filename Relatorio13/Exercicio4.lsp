(defstruct dominio
  nome
  elemento
  dificuldade
  mora)
(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1)))
(defun recompensa-final (d)
  (* (dominio-mora d)
     (bonus-elemental (dominio-elemento d))))
(defun rota (lista dificuldade-maxima)
  (let* ((dominios-filtrados
           (remove-if-not
             (lambda (d)
               (<= (dominio-dificuldade d)
                   dificuldade-maxima))
             lista))
         (textos
           (mapcar
             (lambda (d)
               (format nil "~a - Recompensa: ~,2f mora"
                       (dominio-nome d)
                       (recompensa-final d)))
             dominios-filtrados)))
    textos))
(defun main ()
  (let ((dominios
          (list
            (make-dominio
              :nome "Dragon's Lair"      ;; elder scrolls 6, sentinel
              :elemento :anemo
              :dificuldade 1
              :mora 1000)
            (make-dominio
              :nome "Vampire Lair"
              :elemento :cryo
              :dificuldade 2
              :mora 2000)
            (make-dominio
              :nome "Dwarven Automation Site"
              :elemento :electro
              :dificuldade 3
              :mora 3000)
            (make-dominio
              :nome "Draugr Crypt"
              :elemento :hydro
              :dificuldade 4
              :mora 4000)
            (make-dominio
              :nome "Giant Camp"
              :elemento :pyro
              :dificuldade 5
              :mora 5000))))
    (format t "~%ROTA DO VIAJANTE:~%")
    (dolist (texto (rota dominios 3))
      (format t "~a~%" texto))
    (format t "~%TOTAL DE MORA: ~%")
    (let ((total
            (reduce #'+
                    (mapcar #'recompensa-final dominios))))
      (format t "Total de mora: ~,2f~%" total))
    (format t "~%TESTE DE COPIA: ~%")
    (let* ((original (first dominios))
           (copia (copy-dominio original)))
      (setf (dominio-mora copia) 9999)
      (format t "Mora da copia: ~a~%"
              (dominio-mora copia))
      (format t "Mora do original: ~a~%"
              (dominio-mora original)))))
(main)
