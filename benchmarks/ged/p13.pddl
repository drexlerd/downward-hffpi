;; original sequence 1: (1 27 2 17 36 20 3 29 10 11 35 12 30 21 9 19 18 28 33 7 8 16 26 14 34 13 24 15 32 25 4 22 23 6 31 5)
;; original sequence 2: (1 30 7 2 23 12 3 -32 6 8 21 31 9 -10 11 19 14 18 33 28 -29 27 24 -15 35 16 -34 26 -17 36 20 25 4 22 5 13)
;; simplified sequence 1: (1 27 2 17 38 3 29 10 11 35 12 30 21 9 19 18 28 33 7 8 16 26 14 34 13 24 15 32 37 23 6 31 5)
;; simplified sequence 2: (1 30 7 2 23 12 3 -32 6 8 21 31 9 -10 11 19 14 18 33 28 -29 27 24 -15 35 16 -34 26 -17 38 37 5 13)
;; common subsequences: (((25 4 22) . 37) ((36 20) . 38))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((NORMAL COX1) (NORMAL N) (NORMAL COX2) (NORMAL D) (NORMAL SUB2) (NORMAL COX3) (NORMAL Q) (NORMAL NAD6) (NORMAL COB) (NORMAL W) (NORMAL ATP6) (NORMAL R) (NORMAL H) (NORMAL NAD5) (NORMAL F) (NORMAL E) (NORMAL P) (NORMAL T) (NORMAL NAD4L) (NORMAL NAD4) (NORMAL C) (NORMAL M) (NORMAL RRNS) (NORMAL V) (NORMAL RRNL) (NORMAL L1) (NORMAL A) (NORMAL S2) (NORMAL SUB1) (NORMAL K) (NORMAL NAD3) (NORMAL S1) (NORMAL NAD2))
;; sequence 2 (names): ((NORMAL COX1) (NORMAL R) (NORMAL NAD4L) (NORMAL COX2) (NORMAL K) (NORMAL ATP6) (NORMAL COX3) (INVERTED S2) (NORMAL NAD3) (NORMAL NAD4) (NORMAL H) (NORMAL S1) (NORMAL NAD5) (INVERTED NAD6) (NORMAL COB) (NORMAL F) (NORMAL RRNS) (NORMAL E) (NORMAL T) (NORMAL P) (INVERTED Q) (NORMAL N) (NORMAL L1) (INVERTED A) (NORMAL W) (NORMAL C) (INVERTED V) (NORMAL M) (INVERTED D) (NORMAL SUB2) (NORMAL SUB1) (NORMAL NAD2) (NORMAL RRNL))

(DEFINE (PROBLEM LUMBRICUS-TERRESTRIS-TO-PARACENTROTUS-LIVIDUS)
        (:DOMAIN GENOME-EDIT-DISTANCE)
        (:OBJECTS SUB2 SUB1 W V T S2 S1 R Q P N M L1 K H F E D C A RRNS
            RRNL ATP6 COB NAD6 NAD5 NAD4 NAD4L NAD3 NAD2 COX3 COX2
            COX1)
        (:INIT (NORMAL COX1) (NORMAL N) (NORMAL COX2) (NORMAL D)
               (NORMAL SUB2) (NORMAL COX3) (NORMAL Q) (NORMAL NAD6)
               (NORMAL COB) (NORMAL W) (NORMAL ATP6) (NORMAL R)
               (NORMAL H) (NORMAL NAD5) (NORMAL F) (NORMAL E)
               (NORMAL P) (NORMAL T) (NORMAL NAD4L) (NORMAL NAD4)
               (NORMAL C) (NORMAL M) (NORMAL RRNS) (NORMAL V)
               (NORMAL RRNL) (NORMAL L1) (NORMAL A) (NORMAL S2)
               (NORMAL SUB1) (NORMAL K) (NORMAL NAD3) (NORMAL S1)
               (NORMAL NAD2) (PRESENT COX1) (PRESENT N) (PRESENT COX2)
               (PRESENT D) (PRESENT SUB2) (PRESENT COX3) (PRESENT Q)
               (PRESENT NAD6) (PRESENT COB) (PRESENT W) (PRESENT ATP6)
               (PRESENT R) (PRESENT H) (PRESENT NAD5) (PRESENT F)
               (PRESENT E) (PRESENT P) (PRESENT T) (PRESENT NAD4L)
               (PRESENT NAD4) (PRESENT C) (PRESENT M) (PRESENT RRNS)
               (PRESENT V) (PRESENT RRNL) (PRESENT L1) (PRESENT A)
               (PRESENT S2) (PRESENT SUB1) (PRESENT K) (PRESENT NAD3)
               (PRESENT S1) (PRESENT NAD2) (CW NAD2 COX1) (CW S1 NAD2)
               (CW NAD3 S1) (CW K NAD3) (CW SUB1 K) (CW S2 SUB1)
               (CW A S2) (CW L1 A) (CW RRNL L1) (CW V RRNL) (CW RRNS V)
               (CW M RRNS) (CW C M) (CW NAD4 C) (CW NAD4L NAD4)
               (CW T NAD4L) (CW P T) (CW E P) (CW F E) (CW NAD5 F)
               (CW H NAD5) (CW R H) (CW ATP6 R) (CW W ATP6) (CW COB W)
               (CW NAD6 COB) (CW Q NAD6) (CW COX3 Q) (CW SUB2 COX3)
               (CW D SUB2) (CW COX2 D) (CW N COX2) (CW COX1 N) (IDLE)
               (= (TOTAL-COST) 0))
        (:GOAL (AND (NORMAL COX1) (NORMAL R) (NORMAL NAD4L)
                    (NORMAL COX2) (NORMAL K) (NORMAL ATP6)
                    (NORMAL COX3) (INVERTED S2) (NORMAL NAD3)
                    (NORMAL NAD4) (NORMAL H) (NORMAL S1) (NORMAL NAD5)
                    (INVERTED NAD6) (NORMAL COB) (NORMAL F)
                    (NORMAL RRNS) (NORMAL E) (NORMAL T) (NORMAL P)
                    (INVERTED Q) (NORMAL N) (NORMAL L1) (INVERTED A)
                    (NORMAL W) (NORMAL C) (INVERTED V) (NORMAL M)
                    (INVERTED D) (NORMAL SUB2) (NORMAL SUB1)
                    (NORMAL NAD2) (NORMAL RRNL) (CW RRNL COX1)
                    (CW NAD2 RRNL) (CW SUB1 NAD2) (CW SUB2 SUB1)
                    (CW D SUB2) (CW M D) (CW V M) (CW C V) (CW W C)
                    (CW A W) (CW L1 A) (CW N L1) (CW Q N) (CW P Q)
                    (CW T P) (CW E T) (CW RRNS E) (CW F RRNS)
                    (CW COB F) (CW NAD6 COB) (CW NAD5 NAD6)
                    (CW S1 NAD5) (CW H S1) (CW NAD4 H) (CW NAD3 NAD4)
                    (CW S2 NAD3) (CW COX3 S2) (CW ATP6 COX3)
                    (CW K ATP6) (CW COX2 K) (CW NAD4L COX2)
                    (CW R NAD4L) (CW COX1 R)))
        (:METRIC MINIMIZE (TOTAL-COST)))