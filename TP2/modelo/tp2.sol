Problem:    tp2
Rows:       58
Columns:    63
Non-zeros:  313
Status:     OPTIMAL
Objective:  Z = -18627000 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 dem_max[D1]  B          40000                       45000 
     2 dem_max[D2]  NU         36000                       36000           250 
     3 dem_max[D3]  B          50000                       54000 
     4 dem_min[D1]  B          40000         40000               
     5 dem_min[D2]  B          36000         32000               
     6 dem_min[D3]  NL         50000         50000                         -10 
     7 hum_max[D1]  B           -100                          -0 
     8 hum_max[D2]  NU             0                          -0         < eps
     9 hum_max[D3]  B           -150                          -0 
    10 vol_min[D1]  B            400            -0               
    11 vol_min[D2]  B           1230            -0               
    12 vol_min[D3]  B            650            -0               
    13 dan_max[D1]  NU             0                          -0         20000 
    14 dan_max[D2]  B           -300                          -0 
    15 dan_max[D3]  NU             0                          -0         20000 
    16 imp_max[D1]  B           -250                          -0 
    17 imp_max[D2]  B           -420                          -0 
    18 imp_max[D3]  B          -1050                          -0 
    19 ES_gnos[G1]  NS             0            -0             =         < eps
    20 ES_gnos[G2]  NS             0            -0             =         < eps
    21 ES_gnos[G3]  NS             0            -0             =         < eps
    22 ES_gnos[G4]  NS             0            -0             =         < eps
    23 ES_gnos[G5]  NS             0            -0             =         < eps
    24 ES_gnos[G6]  NS             0            -0             =         < eps
    25 ES_gnos[G7]  NS             0            -0             =         < eps
    26 ES_gnos[G8]  NS             0            -0             =         < eps
    27 ES_gnos[G9]  NS             0            -0             =         < eps
    28 ES_gnos[G10] NS             0            -0             =         < eps
    29 ES_gnos[G11] NS             0            -0             =         < eps
    30 ES_gnos[G12] NS             0            -0             =          -141 
    31 dp_gnos[G1]  NU         30000                       30000           200 
    32 dp_gnos[G2]  NU         45000                       45000           200 
    33 dp_gnos[G3]  B          15000                       25000 
    34 dp_gnos[G4]  B              0                       40000 
    35 dp_gnos[G5]  B              0                       20000 
    36 dp_gnos[G6]  B              0                       30000 
    37 dp_gnos[G7]  B          21000                       75000 
    38 dp_gnos[G8]  NU         15000                       15000           200 
    39 dp_gnos[G9]  B              0                       16000 
    40 dp_gnos[G10] B              0                       20000 
    41 dp_gnos[G11] B              0                       10000 
    42 dp_gnos[G12] B              0                       50000 
    43 ES_dest[D1]  NS             0            -0             =           600 
    44 ES_dest[D2]  NS             0            -0             =         < eps
    45 ES_dest[D3]  NS             0            -0             =           600 
    46 rel_hum[D1]  NS             0            -0             =         < eps
    47 rel_hum[D2]  NS             0            -0             =         < eps
    48 rel_hum[D3]  NS             0            -0             =         < eps
    49 rel_den[D1]  NS             0            -0             =         < eps
    50 rel_den[D2]  NS             0            -0             =         < eps
    51 rel_den[D3]  NS             0            -0             =         < eps
    52 rel_dan[D1]  NS             0            -0             =        -20000 
    53 rel_dan[D2]  NS             0            -0             =         < eps
    54 rel_dan[D3]  NS             0            -0             =        -20000 
    55 rel_imp[D1]  NS             0            -0             =         < eps
    56 rel_imp[D2]  NS             0            -0             =         < eps
    57 rel_imp[D3]  NS             0            -0             =         < eps
    58 Z            B       2.65e+07                             

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 C[D1]        B          40000             0               
     2 C[D2]        B          36000             0               
     3 C[D3]        B          50000             0               
     4 H[D1]        B           5100             0               
     5 H[D2]        B           5580             0               
     6 H[D3]        B           7350             0               
     7 V[D1]        B          22800             0               
     8 V[D2]        B          20670             0               
     9 V[D3]        B          28650             0               
    10 D[D1]        B            800             0               
    11 D[D2]        B           1500             0               
    12 D[D3]        B           1000             0               
    13 I[D1]        B            550             0               
    14 I[D2]        B            660             0               
    15 I[D3]        B            950             0               
    16 GP[G1,D1]    B          30000             0               
    17 GP[G1,D2]    NL             0             0                        -200 
    18 GP[G1,D3]    NL             0             0                       < eps
    19 GP[G2,D1]    B          10000             0               
    20 GP[G2,D2]    NL             0             0                        -200 
    21 GP[G2,D3]    B          35000             0               
    22 GP[G3,D1]    B              0             0               
    23 GP[G3,D2]    B          15000             0               
    24 GP[G3,D3]    B              0             0               
    25 GP[G4,D1]    NL             0             0                        -200 
    26 GP[G4,D2]    NL             0             0                       < eps
    27 GP[G4,D3]    NL             0             0                        -200 
    28 GP[G5,D1]    NL             0             0                        -200 
    29 GP[G5,D2]    NL             0             0                       < eps
    30 GP[G5,D3]    NL             0             0                        -200 
    31 GP[G6,D1]    NL             0             0                        -200 
    32 GP[G6,D2]    NL             0             0                       < eps
    33 GP[G6,D3]    NL             0             0                        -200 
    34 GP[G7,D1]    NL             0             0                        -400 
    35 GP[G7,D2]    B          21000             0               
    36 GP[G7,D3]    NL             0             0                        -400 
    37 GP[G8,D1]    NL             0             0                       < eps
    38 GP[G8,D2]    NL             0             0                        -200 
    39 GP[G8,D3]    B          15000             0               
    40 GP[G9,D1]    NL             0             0                        -800 
    41 GP[G9,D2]    NL             0             0                       < eps
    42 GP[G9,D3]    NL             0             0                        -800 
    43 GP[G10,D1]   NL             0             0                       -1000 
    44 GP[G10,D2]   NL             0             0                       < eps
    45 GP[G10,D3]   NL             0             0                       -1000 
    46 GP[G11,D1]   NL             0             0                       -1200 
    47 GP[G11,D2]   NL             0             0                       < eps
    48 GP[G11,D3]   NL             0             0                       -1200 
    49 GP[G12,D1]   NL             0             0                        -141 
    50 GP[G12,D2]   NL             0             0                        -141 
    51 GP[G12,D3]   NL             0             0                        -141 
    52 GT[G1]       B          30000             0               
    53 GT[G2]       B          45000             0               
    54 GT[G3]       B          15000             0               
    55 GT[G4]       B              0             0               
    56 GT[G5]       B              0             0               
    57 GT[G6]       B              0             0               
    58 GT[G7]       B          21000             0               
    59 GT[G8]       B          15000             0               
    60 GT[G9]       B              0             0               
    61 GT[G10]      B              0             0               
    62 GT[G11]      B              0             0               
    63 GT[G12]      B              0             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 1.46e-11 on row 45
        max.rel.err = 2.27e-16 on row 15
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 3.64e-12 on column 10
        max.rel.err = 6.32e-14 on column 23
        High quality

KKT.DB: max.abs.err = 5.68e-14 on column 37
        max.rel.err = 5.68e-14 on column 37
        High quality

End of output
