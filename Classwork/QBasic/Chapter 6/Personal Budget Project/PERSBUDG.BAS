10 'PERSONAL BUDGET PROJECT
20 CLS
30 PRINT "PERSONAL BUDGET"
40 PRINT "LAST REVISED"; DATE$
45 FOR X = 1 TO 12
50 INPUT "WHAT MONTH ARE YOU PLANNING THIS FOR"; PLANMONTH$
60 DATA PLANMONTH$
70 PRINT "THIS PERSONAL BUDGET IS FOR THE MONTH OF"; PLANMONTH$
80 CLS
81 PRINT
82 PRINT "IF ANY OF THE FOLLOWING OPTIONS HAD NO COST"
90 PRINT "OR WERE N/A INPUT "; "0"; " DOLLARS"
91 PRINT
100 PRINT "CATAGORY: 1/5-    TRANSPORTATION"
101 INPUT "HOW MUCH MONEY WAS SPENT ON CAR REPAIRS"; REPAIRCOST
102 INPUT "HOW MUCH MONEY WAS SPENT ON GAS"; GASCOST
103 INPUT "HOW MUCH MONEY WAS SPENT ON CAR LOANS"; LOANCOST
104 PRINT "END OF CATAGORY"
105 LET CAT1COST = (REPAIRCOST + GASCOST + LOANCOST)
106 CLS
107 GOTO 110
110 PRINT "CATAGORY: 2/5-   EDUCATION"
111 INPUT "HOW MUCH MONEY WAS SPENT ON BOOKS"; BOOKCOST
112 INPUT "HOW MUCH MONEY WAS SPENT ON MATERIALS"; MATCOST
113 INPUT "HOW MUCH MONEY WAS SPENT ON RECREATION"; RECRECOST
114 LET CAT2COST = (BOOKCOST + MATCOST + RECRECOST)
115 PRINT "END OF CATAGORY"
116 CLS
117 GOTO 120
120 PRINT "CATAGORY: 3/5-   CLOTHES"
121 INPUT "HOW MUCH MONEY WAS SPENT ON CLOTHES"; CLOTHESCOST
122 LET CAT3COST = CLOTHESCOST
123 PRINT "END OF CATAGORY"
124 CLS
125 GOTO 130
130 PRINT "CATAGORY: 4/5-  HOUSEHOLD"
131 INPUT "HOW MUCH MONEY WAS SPENT ON FURNITURE"; FURNCOST
132 INPUT "HOW MUCH MONEY WAS SPENT ON UTILITIES"; UTILCOST
133 LET CAT4COST = (FURNCOST + UTILCOST)
134 PRINT "END OF CATAGORY"
135 CLS
136 GOTO 140
140 PRINT "CATAGORY: 5/5-    FOOD"
141 INPUT "HOW MUCH MONEY WAS SPENT ON FOOD"; FOODCOST
142 PRINT "END OF CATAGORY"
143 LET CAT5COST = FOODCOST
144 CLS
145 GOTO 150
150 LET TOTALCOST = (CAT1COST + CAT2COST + CAT3COST + CAT4COST + CAT5COST)
150.1 CLS
151 PRINT "THIS BUDGET REPORT IS FOR THE MONTH OF"; PLANMONTH$
152 PRINT "TRANSPORTATION COSTS:"; CAT1COST
153 PRINT "EDUCATION COSTS:"; CAT2COST
154 PRINT "CLOTHES COST"; CAT3COST
155 PRINT "HOUSEHOLD COSTS"; CAT4COST
156 PRINT "FOOD COSTS"; CAT5COST
157 PRINT
158 PRINT "TOTAL MONTHLY COSTS"; TOTALCOST
158.1 INPUT "PRESS Y TO CONTINUE TO THE NEXT MONTH"; NEXTMONTH$
158.2 IF NEXTMONTH$ = Y THEN GOTO 159
159 NEXT X
160 END

