;; Auto-generated. Do not edit!


(when (boundp 'turn_msg::Turn)
  (if (not (find-package "TURN_MSG"))
    (make-package "TURN_MSG"))
  (shadow 'Turn (find-package "TURN_MSG")))
(unless (find-package "TURN_MSG::TURN")
  (make-package "TURN_MSG::TURN"))
(unless (find-package "TURN_MSG::TURNREQUEST")
  (make-package "TURN_MSG::TURNREQUEST"))
(unless (find-package "TURN_MSG::TURNRESPONSE")
  (make-package "TURN_MSG::TURNRESPONSE"))

(in-package "ROS")





(defclass turn_msg::TurnRequest
  :super ros::object
  :slots (_player _x _y ))

(defmethod turn_msg::TurnRequest
  (:init
   (&key
    ((:player __player) "")
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _player (string __player))
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:player
   (&optional __player)
   (if __player (setq _player __player)) _player)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; string _player
    4 (length _player)
    ;; uint32 _x
    4
    ;; uint32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _player
       (write-long (length _player) s) (princ _player s)
     ;; uint32 _x
       (write-long _x s)
     ;; uint32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _player
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _player (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turn_msg::TurnResponse
  :super ros::object
  :slots (_r1 _r2 _r3 ))

(defmethod turn_msg::TurnResponse
  (:init
   (&key
    ((:r1 __r1) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:r2 __r2) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:r3 __r3) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _r1 __r1)
   (setq _r2 __r2)
   (setq _r3 __r3)
   self)
  (:r1
   (&optional __r1)
   (if __r1 (setq _r1 __r1)) _r1)
  (:r2
   (&optional __r2)
   (if __r2 (setq _r2 __r2)) _r2)
  (:r3
   (&optional __r3)
   (if __r3 (setq _r3 __r3)) _r3)
  (:serialization-length
   ()
   (+
    ;; string[] _r1
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _r1)) 4
    ;; string[] _r2
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _r2)) 4
    ;; string[] _r3
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _r3)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _r1
     (write-long (length _r1) s)
     (dolist (elem _r1)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _r2
     (write-long (length _r2) s)
     (dolist (elem _r2)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _r3
     (write-long (length _r3) s)
     (dolist (elem _r3)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _r1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r1 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _r1 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _r2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r2 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _r2 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _r3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r3 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _r3 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass turn_msg::Turn
  :super ros::object
  :slots ())

(setf (get turn_msg::Turn :md5sum-) "ac45d99ae4b575112e36047ef211fbe1")
(setf (get turn_msg::Turn :datatype-) "turn_msg/Turn")
(setf (get turn_msg::Turn :request) turn_msg::TurnRequest)
(setf (get turn_msg::Turn :response) turn_msg::TurnResponse)

(defmethod turn_msg::TurnRequest
  (:response () (instance turn_msg::TurnResponse :init)))

(setf (get turn_msg::TurnRequest :md5sum-) "ac45d99ae4b575112e36047ef211fbe1")
(setf (get turn_msg::TurnRequest :datatype-) "turn_msg/TurnRequest")
(setf (get turn_msg::TurnRequest :definition-)
      "string player
uint32 x
uint32 y
---
string[] r1
string[] r2
string[] r3
")

(setf (get turn_msg::TurnResponse :md5sum-) "ac45d99ae4b575112e36047ef211fbe1")
(setf (get turn_msg::TurnResponse :datatype-) "turn_msg/TurnResponse")
(setf (get turn_msg::TurnResponse :definition-)
      "string player
uint32 x
uint32 y
---
string[] r1
string[] r2
string[] r3
")



(provide :turn_msg/Turn "ac45d99ae4b575112e36047ef211fbe1")


