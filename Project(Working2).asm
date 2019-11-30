include 'emu8086.inc'
org 100h
.data      
    mov bx,0
    mov si,0
    score dw ?
    hcfs dw ?
    stsh dw ?
    chru dw ?
    raga dw ?
    pro dw ?
    rapro dw ?
    peco dw ?
    coin dw ?
    prot dw ?
    foo dw ?    
    cho dw ? 
    mov hcfs,0
    mov stsh,0
    mov chru,0
    mov raga,0
    mov pro,0
    mov rapro,0
    mov peco,0
    mov coin,0
    mov prot,0
    mov foo,0   
    mov cho,0
   c1 db 1,4,3,2,4,4,2,3,4,1,2,3,4,3,2,1,4,2,2,1
   c2 db 3,1,2,2,2,4,2,1,3,4,3,2,3,4,1,3,2,2,4,3
   c3 db 3,3,2,1,3,1,3,4,1,2,1,4,3,2,1,2,3,1,4,1 
   ca1 db 2,1,3,2,4 
   ca2 db 3,4,4,1,3
   ca3 db 3,1,4,2,2
   ca4 db 3,3,3,2,3
   head db 10,13,'                                   APTITUDE TEST                                                          $'
   head1 db 10,13,' CHOOSE YOUR CHOICE$'
   term db 10,13,' NOTE : Press 0 to terminate in between any test$' 
   choice db 10,13,'     1- Category-wise Questions',10,13,'     2- Complete Test',10,13,'     3- Exit$'
   choice1 db 10,13,'     1- Profit and Loss',10,13,'     2- Height and Distance',10,13,'     3- Simple Interest',10,13,'     4- Boats and Streams',10,13,'     5- Main Menu$'
   ca11 db 10,13,'1)Alfred buys an old scooter for Rs. 4700 and spends Rs. 800 on its repairs. If he sells the scooter for Rs. 5800, his gain percent is: ',10,13,' 1- 32/7 %',10,13,' 2- 60/7 %',10,13,' 3- 10%',10,13,' 4- 12%$'
   ca12 db 10,13,'2)The cost price of 20 articles is the same as the selling price of x articles. If the profit is 25%, then the value of x is: ',10,13,' 1- 16',10,13,' 2- 15',10,13,' 3- 18',10,13,' 4- 25$'
   ca13 db 10,13,'3)If selling price is doubled, the profit triples. Find the profit percent.',10,13,' 1- 200/3',10,13,' 2- 316/3',10,13,' 3- 100',10,13,' 4- 120$'
   ca14 db 10,13,'4)In a certain store, the profit is 320% of the cost. If the cost increases by 25% but the selling price remains constant, approximately what percentage of the selling price is the profit? ',10,13,' 1- 30%',10,13,' 2- 100%',10,13,' 3- 70%',10,13,' 4- 250%$'
   ca15 db 10,13,'5)A vendor bought toffees at 6 for a rupee. How many for a rupee must he sell to gain 20%? ',10,13,' 1- 3',10,13,' 2- 5',10,13,' 3- 6',10,13,' 4- 4$' 
   ca21 db 10,13,'1)Two ships are sailing in the sea on the two sides of a lighthouse. The angle of elevation of the top of the lighthouse is observed from the ships are 30degree and 45degree respectively. If the lighthouse is 100 m high, the distance between the two ships is: ',10,13,' 1- 173m',10,13,' 2- 200m',10,13,' 3- 273m',10,13,' 4- 300m$'
   ca22 db 10,13,'2)A man standing at a point P is watching the top of a tower, which makes an angle of elevation of 30degree with the mans eye. The man walks some distance towards the tower to watch its top and the angle of the elevation becomes 60degree. What is the distance between the base of the tower and the point P?',10,13,' 1- 6.928 units',10,13,' 2- 8 units',10,13,' 3- 12 units',10,13,' 4- Data Inadequate$'
   ca23 db 10,13,'3)The angle of elevation of a ladder leaning against a wall is 60degree and the foot of the ladder is 4.6 m away from the wall. The length of the ladder is: ',10,13,' 1- 2.3m',10,13,' 2- 4.6m',10,13,' 3- 7.8m',10,13,' 4- 9.2m$'
   ca24 db 10,13,'4)An observer 1.6 m tall is 34.641 away from a tower. The angle of elevation from his eye to the top of the tower is 30degree. The heights of the tower is: ',10,13,' 1- 21.6m',10,13,' 2- 23.2m',10,13,' 3- 24.72m',10,13,' 4- None of these$'
   ca25 db 10,13,'5)From a point P on a level ground, the angle of elevation of the top tower is 30degree. If the tower is 100 m high, the distance of point P from the foot of the tower is: ',10,13,' 1- 149m',10,13,' 2- 156m',10,13,' 3- 173m',10,13,' 4- 200m$'
   ca31 db 10,13,'1)A sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is:',10,13,' 1- Rs.650',10,13,' 2- Rs.690',10,13,' 3- Rs.698',10,13,' 4- Rs.700$'
   ca32 db 10,13,'2)Mr. Thomas invested an amount of Rs. 13,900 divided in two different schemes A and B at the simple interest rate of 14% p.a. and 11% p.a. respectively. If the total amount of simple interest earned in 2 years be Rs. 3508, what was the amount invested in Scheme B?',10,13,' 1- Rs.6400',10,13,' 2- Rs.6500',10,13,' 3- Rs.7200',10,13,' 4- Rs.7500$'
   ca33 db 10,13,'3)A sum fetched a total simple interest of Rs. 4016.25 at the rate of 9 p.c.p.a. in 5 years. What is the sum?',10,13,' 1- Rs.4462.50',10,13,' 2- Rs.8032.50',10,13,' 3- Rs.8900',10,13,' 4- Rs.8925$'   
   ca34 db 10,13,'4)How much time will it take for an amount of Rs. 450 to yield Rs. 81 as interest at 4.5% per annum of simple interest?',10,13,' 1- 3.5 years',10,13,' 2- 4 years',10,13,' 3- 4.5 years',10,13,' 4- 5 years$'
   ca35 db 10,13,'5)Reena took a loan of Rs. 1200 with simple interest for as many years as the rate of interest. If she paid Rs. 432 as interest at the end of the loan period, what was the rate of interest?',10,13,' 1- 3.6',10,13,' 2- 6',10,13,' 3- 18',10,13,' 4- Cannot be Determined$'
   ca41 db 10,13,'1)A boat can travel with a speed of 13 km/hr in still water. If the speed of the stream is 4 km/hr, find the time taken by the boat to go 68 km downstream.',10,13,' 1- 2 hours',10,13,' 2- 3 hours',10,13,' 3- 4 hours',10,13,' 4- 5 hours$'
   ca42 db 10,13,'2)A mans speed with the current is 15 km/hr and the speed of the current is 2.5 km/hr. The mans speed against the current is:',10,13,' 1- 8.5 km/hr',10,13,' 2- 9 km/hr',10,13,' 3- 10 km/hr',10,13,' 4- 12.5 km/hr$'
   ca43 db 10,13,'3)A boat running upstream takes 8 hours 48 minutes to cover a certain distance, while it takes 4 hours to cover the same distance running downstream. What is the ratio between the speed of the boat and speed of the water current respectively?',10,13,' 1- 2:1',10,13,' 2- 3:2',10,13,' 3- 8:3',10,13,' 4- Cannot be determined$'
   ca44 db 10,13,'4)A motorboat, whose speed in 15 km/hr in still water goes 30 km downstream and comes back in a total of 4 hours 30 minutes. The speed of the stream (in km/hr) is:',10,13,' 1- 4',10,13,' 2- 5',10,13,' 3- 6',10,13,' 4- 10$'
   ca45 db 10,13,'5)In one hour, a boat goes 11 km/hr along the stream and 5 km/hr against the stream. The speed of the boat in still water (in km/hr) is:',10,13,' 1- 3 km/hr',10,13,' 2- 5 km/hr',10,13,' 3- 8 km/hr',10,13,' 4- 9 km/hr$'
   c101 db 10,13,'1)Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case.',10,13,' 1- 4',10,13,' 2- 7',10,13,' 3- 9',10,13,' 4- 13$'
   c102 db 10,13,'2)Six bells commence tolling together and toll at intervals of 2, 4, 6, 8 10 and 12 seconds respectively. In 30 minutes, how many times do they toll together ?',10,13,' 1- 4',10,13,' 2- 10',10,13,' 3- 15',10,13,' 4- 16$'
   c103 db 10,13,'3)A man bought 20 shares of Rs. 50 at 5 discount, the rate of dividend being 27/2. The rate of interest obtained is:',10,13,' 1- 25/2 %',10,13,' 2- 27/2 %',10,13,' 3- 15%',10,13,' 4- 50/3 %$'
   c104 db 10,13,'4)A man buys Rs. 20 shares paying 9% dividend. The man wants to have an interest of 12% on his money. The market value of each share is:',10,13,' 1- Rs.12',10,13,' 2- Rs.15',10,13,' 3- Rs.18',10,13,' 4- Rs.21$'
   c105 db 10,13,'5)3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?',10,13,' 1- 9',10,13,' 2- 10',10,13,' 3- 11',10,13,' 4- 12$'
   c106 db 10,13,'6)If the cost of x metres of wire is d rupees, then what is the cost of y metres of wire at the same rate?',10,13,' 1- Rs.(xy/d)',10,13,' 2- Rs.(xd)',10,13,' 3- Rs.(yd)',10,13,' 4- Rs.(yd/x)$'
   c107 db 10,13,'7)A and B take part in 100 m race. A runs at 5 kmph. A gives B a start of 8 m and still beats him by 8 seconds. The speed of B is:',10,13,' 1- 5.15 kmph',10,13,' 2- 4.14 kmph',10,13,' 3- 4.25 kmph',10,13,' 4- 4.4 kmph$'
   c108 db 10,13,'8)At a game of billiards, A can give B 15 points in 60 and A can give C to 20 points in 60. How many points can B give C in a game of 90?',10,13,' 1- 30 points',10,13,' 2- 20 points',10,13,' 3- 10 points',10,13,' 4- 12 points$'
   c109 db 10,13,'9)Tickets numbered 1 to 20 are mixed up and then a ticket is drawn at random. What is the probability that the ticket drawn has a number which is a multiple of 3 or 5?',10,13,' 1- 1/2',10,13,' 2- 2/5',10,13,' 3- 8/15',10,13,' 4- 9/20$'
   c110 db 10,13,'10)A bag contains 2 red, 3 green and 2 blue balls. Two balls are drawn at random. What is the probability that none of the balls drawn is blue?',10,13,' 1- 10/21',10,13,' 2- 11/21',10,13,' 3- 2/7',10,13,' 4- 5/7$'
   c111 db 10,13,'11)A and B together have Rs. 1210. If 4/15 of As amount is equal to 2/5 of Bs amount, how much amount does B have?',10,13,' 1- Rs.460',10,13,' 2- Rs.484',10,13,' 3- Rs.550',10,13,' 4- Rs.664$'
   c112 db 10,13,'12)Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is:',10,13,' 1- 2:5',10,13,' 2- 3:5',10,13,' 3- 4:5',10,13,' 4- 6:7$'
   c113 db 10,13,'13)From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done?',10,13,' 1- 564',10,13,' 2- 645',10,13,' 3- 735',10,13,' 4- 756$'
   c114 db 10,13,'14)In how many different ways can the letters of the word "LEADING" be arranged in such a way that the vowels always come together?',10,13,' 1- 360',10,13,' 2- 480',10,13,' 3- 720',10,13,' 4- None of these$'
   c115 db 10,13,'15)A bank offers 5% compound interest calculated on half-yearly basis. A customer deposits Rs. 1600 each on 1st January and 1st July of a year. At the end of the year, the amount he would have gained by way of interest is:',10,13,' 1- Rs.120',10,13,' 2- Rs.121',10,13,' 3- Rs.122',10,13,' 4- Rs.123$'
   c116 db 10,13,'16)The difference between simple and compound interests compounded annually on a certain sum of money for 2 years at 4% per annum is Re. 1. The sum (in Rs.) is:',10,13,' 1- 625',10,13,' 2- 630',10,13,' 3- 640',10,13,' 4- 650$'
   c117 db 10,13,'17)A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?',10,13,' 1- 120 metres',10,13,' 2- 180 metres',10,13,' 3- 324 metres',10,13,' 4- 150 metres$'
   c118 db 10,13,'18)Two trains running in opposite directions cross a man standing on the platform in 27 seconds and 17 seconds respectively and they cross each other in 23 seconds. The ratio of their speeds is:',10,13,' 1- 1:3',10,13,' 2- 3:2',10,13,' 3- 3:4',10,13,' 4- None of these$'
   c119 db 10,13,'19)Find the odd one out from : 8, 27, 64, 100, 125, 216, 343',10,13,' 1- 27',10,13,' 2- 100',10,13,' 3- 125',10,13,' 4- 216$'
   c120 db 10,13,'20)Find the odd one out from : 396, 462, 572, 427, 671, 264',10,13,' 1- 427',10,13,' 2- 396',10,13,' 3- 671',10,13,' 4- 264$'
   c201 db 10,13,'1)The H.C.F. of two numbers is 23 and the other two factors of their L.C.M. are 13 and 14. The larger of the two numbers is:',10,13,' 1- 276',10,13,' 2- 299',10,13,' 3- 322',10,13,' 4- 345$'
   c202 db 10,13,'2)Let N be the greatest number that will divide 1305, 4665 and 6905, leaving the same remainder in each case. Then sum of the digits in N is : ',10,13,' 1- 4',10,13,' 2- 5',10,13,' 3- 6',10,13,' 4- 8$'
   c203 db 10,13,'3)In order to obtain an income of Rs. 650 from 10% stock at Rs. 96, one must make an investment of:',10,13,' 1- Rs.3100',10,13,' 2- Rs.6240',10,13,' 3- Rs.6500',10,13,' 4- Rs.9600$'
   c204 db 10,13,'4)By investing in 50/3% stock at 64, one earns Rs. 1500. The investment made is : ',10,13,' 1- Rs.5640',10,13,' 2- Rs.5760',10,13,' 3- Rs.7500',10,13,' 4- Rs.9600$'
   c205 db 10,13,'5)Running at the same constant rate, 6 identical machines can produce a total of 270 bottles per minute. At this rate, how many bottles could 10 such machines produce in 4 minutes?',10,13,' 1- 648',10,13,' 2- 1800',10,13,' 3- 2700',10,13,' 4- 10800$'
   c206 db 10,13,'6)39 persons can repair a road in 12 days, working 5 hours a day. In how many days will 30 persons, working 6 hours a day, complete the work?',10,13,' 1- 10',10,13,' 2- 15',10,13,' 3- 14',10,13,' 4- 13$'
   c207 db 10,13,'7)In a 100 m race, A can give B 10 m and C 28 m. In the same race B can give C:',10,13,' 1- 18m',10,13,' 2- 20m',10,13,' 3- 27m',10,13,' 4- 9m$'
   c208 db 10,13,'8)In 100 m race, A covers the distance in 36 seconds and B in 45 seconds. In this race A beats B by:',10,13,' 1- 20m',10,13,' 2- 25m',10,13,' 3- 22.5m',10,13,' 4- 9m$'
   c209 db 10,13,'9)What is the probability of getting a sum 9 from two throws of a dice?',10,13,' 1- 1/6',10,13,' 2- 1/8',10,13,' 3- 1/9',10,13,' 4- 1/12$'
   c210 db 10,13,'10)Three unbiased coins are tossed. What is the probability of getting at most two heads?',10,13,' 1- 3/4',10,13,' 2- 1/4',10,13,' 3- 3/8',10,13,' 4- 7/8$'
   c211 db 10,13,'11)A sum of money is to be distributed among A, B, C, D in the proportion of 5 : 2 : 4 : 3. If C gets Rs. 1000 more than D, what is Bs share?',10,13,' 1- Rs.500',10,13,' 2- Rs.1500',10,13,' 3- Rs.2000',10,13,' 4- None of these$'
   c212 db 10,13,'12)If 0.75 : x :: 5 : 8, then x is equal to:',10,13,' 1- 1.12',10,13,' 2- 1.2',10,13,' 3- 1.25',10,13,' 4- 1.30$'
   c213 db 10,13,'13)In how many ways can the letters of the word "LEADER" be arranged?',10,13,' 1- 72',10,13,' 2- 144',10,13,' 3- 360',10,13,' 4- 720$'
   c214 db 10,13,'14)How many 3-digit numbers can be formed from the digits 2, 3, 5, 6, 7 and 9, which are divisible by 5 and none of the digits is repeated?',10,13,' 1- 5',10,13,' 2- 10',10,13,' 3- 15',10,13,' 4- 20$'
   c215 db 10,13,'15)The compound interest on Rs. 30,000 at 7% per annum is Rs. 4347. The period (in years) is:',10,13,' 1- 2',10,13,' 2- 5/2',10,13,' 3- 3',10,13,' 4- 4$'
   c216 db 10,13,'16)What will be the compound interest on a sum of Rs. 25,000 after 3 years at the rate of 12 p.c.p.a.?',10,13,' 1- Rs.9000.30',10,13,' 2- Rs. 9720',10,13,' 3- Rs. 10123.20',10,13,' 4- Rs. 10483.20$'
   c217 db 10,13,'17)A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:',10,13,' 1- 45 km/hr',10,13,' 2- 50 km/hr',10,13,' 3- 54 km/hr',10,13,' 4- 55 km/hr$'
   c218 db 10,13,'18)A train 240 m long passes a pole in 24 seconds. How long will it take to pass a platform 650 m long?',10,13,' 1- 65sec',10,13,' 2- 89sec',10,13,' 3- 100sec',10,13,' 4- 150sec$'
   c219 db 10,13,'19)2, 5, 10, 17, 26, 37, 50, 64',10,13,' 1- 50',10,13,' 2- 26',10,13,' 3- 37',10,13,' 4- 64$'
   c220 db 10,13,'20)21, 34, 55, 89, 144, 233, 377, 574, 610',10,13,' 1- 89',10,13,' 2- 144',10,13,' 3- 574',10,13,' 4- 610$'
   c301 db 10,13,'1)The greatest number of four digits which is divisible by 15, 25, 40 and 75 is:',10,13,' 1- 9000',10,13,' 2- 9400',10,13,' 3- 9600',10,13,' 4- 9800$'
   c302 db 10,13,'2)The G.C.D. of 1.08, 0.36 and 0.9 is:',10,13,' 1- 0.03',10,13,' 2- 0.9',10,13,' 3- 0.18',10,18,' 4- 0.108$'
   c303 db 10,13,'3)Which is better investment: 11% stock at 143 or 39/4 % stock at 117 ?',10,13,' 1- 11% stock at 143',10,13,' 2- 39/4% stock at 117',10,13,' 3- Both are equally good',10,13,' 4- Cannot be compared, as the total amount of investment is not given.$'
   c304 db 10,13,'4)A 6% stock yields 8%. The market value of the stock is:',10,13,' 1- Rs.75',10,13,' 2- Rs.48',10,13,' 3- Rs.96',10,13,' 4- Rs.133.33$'
   c305 db 10,13,'5)A fort had provision of food for 150 men for 45 days. After 10 days, 25 men left the fort. The number of days for which the remaining food will last, is:',10,13,' 1- 146/5',10,13,' 2- 149/4',10,13,' 3- 42',10,13,' 4- 54$'
   c306 db 10,13,'6)If a quarter kg of potato costs 60 paise, how many paise will 200 gm cost?',10,13,' 1- 48 paise',10,13,' 2- 54 paise',10,13,' 3- 56 paise',10,13,' 4- 72 paise$'
   c307 db 10,13,'7)In a 500 m race, the ratio of the speeds of two contestants A and B is 3 : 4. A has a start of 140 m. Then, A wins by:',10,13,' 1- 60m',10,13,' 2- 40m',10,13,' 3- 20m',10,13,' 4- 10m$'
   c308 db 10,13,'8)In a 100 m race, A beats B by 10 m and C by 13 m. In a race of 180 m, B will beat C by:',10,13,' 1- 5.4m',10,13,' 2- 4.5m',10,13,' 3- 5m',10,13,' 4- 6m$'
   c309 db 10,13,'9)In a box, there are 8 red, 7 blue and 6 green balls. One ball is picked up randomly. What is the probability that it is neither red nor green?',10,13,' 1- 1/3',10,13,' 2- 3/4',10,13,' 3- 7/19',10,13,' 4- 8/21$'
   c310 db 10,13,'10)In a lottery, there are 10 prizes and 25 blanks. A lottery is drawn at random. What is the probability of getting a prize?',10,13,' 1- 1/10',10,13,' 2- 2/7',10,13,' 3- 2/5',10,13,' 4- 5/7$'
   c311 db 10,13,'11)Seats for Mathematics, Physics and Biology in a school are in the ratio 5 : 7 : 8. There is a proposal to increase these seats by 40%, 50% and 75% respectively. What will be the ratio of increased seats?',10,13,' 1- 2:3:4',10,13,' 2- 6:7:8',10,13,' 3- 6:8:9',10,13,' 4- None of these$'
   c312 db 10,13,'12)Salaries of Ravi and Sumit are in the ratio 2 : 3. If the salary of each is increased by Rs. 4000, the new ratio becomes 40 : 57. What is Sumits salary?',10,13,' 1- Rs.17,000',10,13,' 2- Rs.20,000',10,13,' 3- Rs.25,500',10,13,' 4- Rs.38,000$'
   c313 db 10,13,'13)Out of 7 consonants and 4 vowels, how many words of 3 consonants and 2 vowels can be formed?',10,13,' 1- 210',10,13,' 2- 1050',10,13,' 3- 25200',10,13,' 4- 21400$'
   c314 db 10,13,'14)In how many ways a committee, consisting of 5 men and 6 women can be formed from 8 men and 10 women?',10,13,' 1-266',10,13,' 2- 11760',10,13,' 3- 50400',10,13,' 4- 86400$'
   c315 db 10,13,'15)What is the difference between the compound interests on Rs. 5000 for 3/2 years at 4% per annum compounded yearly and half-yearly?',10,13,' 1- Rs.2.04',10,13,' 2- Rs.3.06',10,13,' 3- Rs.4.80',10,13,' 4- Rs.8.30$'
   c316 db 10,13,'16)The least number of complete years in which a sum of money put out at 20% compound interest will be more than doubled is:',10,13,' 1- 3',10,13,' 2- 4',10,13,' 3- 5',10,13,' 4- 6$'
   c317 db 10,13,'17)The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:',10,13,' 1- 200 m',10,13,' 2- 225 m',10,13,' 3- 245 m',10,13,' 4- 250 m$'
   c318 db 10,13,'18)Two trains of equal length are running on parallel lines in the same direction at 46 km/hr and 36 km/hr. The faster train passes the slower train in 36 seconds. The length of each train is:',10,13,' 1- 50m',10,13,' 2- 72m',10,13,' 3- 80m',10,13,' 4- 82m$'
   c319 db 10,13,'19)41, 43, 47, 53, 61, 71, 73, 81',10,13,' 1- 61',10,13,' 2- 71',10,13,' 3- 73',10,13,' 4- 81$'
   c320 db 10,13,'20)835, 734, 642, 751, 853, 981, 532',10,13,' 1- 751',10,13,' 2- 853',10,13,' 3- 981',10,13,' 4- 532$'
   exp101 db 10,13,'1)Required number = H.C.F. of (91 - 43), (183 - 91) and (183 - 43)',10,13,'    = H.C.F. of 48, 92 and 140 = 4.$' 
   exp102 db 10,13,'2)L.C.M. of 2, 4, 6, 8, 10, 12 is 120.',10,13,'  So, the bells will toll together after every 120 seconds(2 minutes).',10,13,'     In 30 minutes, they will toll together	30/2 + 1 = 16 times.$'
   exp103 db 10,13,'3)Investment = Rs. [20 x (50 - 5)] = Rs. 900.',10,13,' Face value = Rs. (50 x 20) = Rs. 1000.',10,13,' Dividend = Rs.(27/2 x 1000/100) = Rs.135.',10,13,' Interest Obtained = (135/900 x 100)% = 15%.$'
   exp104 db 10,13,'4)Dividend on Rs.20 = Rs.(9/100 x 20) = Rs.9/5.',10,13,'  Rs.12 income on Rs.100.',10,13,' Rs.9/5 is an income on Rs.(100/12 x 9/5) = Rs.15.$'
   exp105 db 10,13,'5)Let the required number of working hours per day be x.',10,13,'  More pumps, Less working hours per day (Indirect Proportion)',10,13,'  Less days, More working hours per day (Indirect Proportion)',10,13,' Pumps 4 : 3 `|',10,13,'               - :: 8 : x',10,13,' Days 1 : 2 ,|',10,13,'Therefore 4 * 1 * x = 3 * 2 * 8',10,13,' => x=(3*2*8)/4',10,13,' => x = 12.$'
   exp106 db 10,13,'6)Cost of x metres = Rs. d.',10,13,'Cost of 1 metre = Rs.(d/x)',10,13,'Cost of y metres = Rs.((d/x).y) = Rs.(yd/x)$'
   exp107 db 10,13,"7)A's speed = (5 x 5/18) m/sec = 25/18 m/sec.",10,13,"  Time taken by A to cover 100m = (100 x 18/25)sec = 72sec.",10,13,"  Time taken by B to cover 92m = (72 + 8) = 80sec.",10,13,"  B's speed = (92/80 x 18/5)kmph = 4.14kmph.$" 
   exp108 db 10,13,'8) A : B = 60 : 45',10,13,'   A : C = 60 : 40',10,13,'   B/C = (B/A * A/C) = (45/60 x 60/40) = 45/40 = 90/80 = 90 : 80',10,13,'   B can give C 10 points in a game of 90$'
   exp109 db 10,13,'9) Here, S = {1,2,3,4,...,19,20}.',10,13,'   Let E = event of getting a multiple of 3 or 5 = {3,6,9,12,15,18,5,10,20}.',10,13,'   P(E) = n(E)/n(S) = 9/20$'
   exp110 db 10,13,'10) Total number of balls = (2 + 3 + 2) = 7.',10,13,'    Let S be the sample space.',10,13,'     Then, n(S) = Number of ways of drawing 2 balls out of 7',10,13,'      = 5C2',10,13,'      = (7 x 6)/((2 x 1) = 21',10,13,'    Let E = Event of drawing 2 balls, none of which is blue.',10,13,'     n(E)	= Number of ways of drawing 2 balls out of (2 + 3) balls.',10,13,'      = 5C2',10,13,'      = (5 x 4)/(2 x 1) = 10',10,13,'         P(E) = n(E)/n(S) = 10/21$'
   exp111 db 10,13,'11)  4/15A = 2/5B',10,13,'     => A = (2/5 x 15/4)B',10,13,'     => A = 3/2B',10,13,'      => A/B = 3/2',10,13,'      => A : B = 3 : 2',10,13,'       Bs share = Rs.(1210 x 2/5) = Rs.484.$'
   exp112 db 10,13,'12)  Let the third number be x.',10,13,'    Then, first number = 120% of x = 120x/100 = 6x/5',10,13,'        Second number = 150% of x = 150x/100 = 3x/2',10,13,'        Ratio of first two numbers = (6x/5 : 3x/2) = 12x : 15x = 4:5.$'
   exp113 db 10,13,'13)  We may have (3 men and 2 women) or (4 men and 1 woman) or (5 men only).',10,13,'    Required number of ways = (7C3 x 6C2) + (7C4 x 6C1) + (7C5)',10,13,'        = (525 + 210 + 21) = 756$'
   exp114 db 10,13,"14)  The word 'LEADING' has 7 different letters.",10,13,"    When the vowels EAI are always together, they can be supposed to form one letter.",10,13,"    Then, we have to arrange the letters LNDG (EAI).",10,13,"    Now, 5 (4 + 1 = 5) letters can be arranged in 5! = 120 ways.",10,13,"    The vowels (EAI) can be arranged among themselves in 3! = 6 ways.",10,13,"     Required number of ways = (120 x 6) = 720.$"
   exp115 db 10,13,'15)  Amount = Rs.[ 1600 x (1 + 5/2*100)^2 + 1600 x (1 + 5/2*100) ]',10,13,'     = Rs.[ 1600 x 41/40 x 41/40 + 1600 x 41/40 ]',10,13,'     Rs.[ 1600 x 41/40(41/40 + 1) ]',10,13,'     Rs.3321.',10,13,'     C.I. = Rs.(3321 - 3200) = Rs.121$'
   exp116 db 10,13,'16)  Let the sum be Rs. x. Then,',10,13,'     C.I. = [x(1 + 4/100)^2 - x] = (51x/625).',10,13,'     S.I. = 2x/25',10,13,'     51x/625 - 2x/25 = 1',10,13,'     => x = 625.$'
   exp117 db 10,13,'17)  Speed = (60 x 5/18) m/sec = (50/3) m/sec.',10,13,'     Length of the train = (Speed x Time).',10,13,'      Length of the train = (50/3 x 9)m = 150m.$'
   exp118 db 10,13,'18)  Let the speeds of the two trains be x m/sec and y m/sec respectively.',10,13,'     Then, length of the first train = 27x metres,',10,13,'     and length of the second train = 17y metres.',10,13,'     (27x + 17y)/(x + y) = 23',10,13,'     =>27x + 17y = 23x + 23y',10,13,'     =>x/y = 3/2.$'
   exp119 db 10,13,'19)  The pattern is 2^3, 3^3, 4^3, 5^3, 6^3, 7^3. But, 100 is not a perfect cube.$'
   exp120 db 10,13,'20)  In each number except 427, the middle digit is the sum of other two.$'          
   exp201 db 10,13,'1)Clearly, the numbers are (23 x 13) and (23 x 14).',10,13,'   Larger number = (23 x 14) = 322$'
   exp202 db 10,13,'2)N = H.C.F. of (4665 - 1305), (6905 - 4665) and (6905 - 1305)',10,13,'  N = H.C.F. of (4665 - 1305), (6905 - 4665) and (6905 - 1305)',10,13,' Sum of digits in N = ( 1 + 1 + 2 + 0 ) = 4.$'
   exp203 db 10,13,'3)To obtain Rs. 10, investment = Rs. 96.',10,13,'  To obtain Rs. 650, investment = Rs.(96/10 x 650)=Rs.6240.$'
   exp204 db 10,13,'4)To Earn Rs.50/3, investment = Rs.64',10,13,' To earn Rs.1500, investment = Rs.(64 x 3/50 x 1500) = Rs.5760$'
   exp205 db 10,13,'5)Let the required number of bottles be x.',10,13,'  More machines, More bottles (Direct Proportion)',10,13,'  More minutes, More bottles (Direct Proportion)',10,13,'   Machines   6 : 10 `|',10,13,'                        - :: 270 : x',10,13,'   Time(mins)  1 : 4 ,|',10,13,'   6 * 1 * x = 10 * 4 * 270',10,13,'     =>x = 1800$'
   exp206 db 10,13,'6)Let the required number of days be x.',10,13,'  Less persons, More days (Indirect Proportion)  More working hours per day, Less days (Indirect Proportion)',10,13,'    Persons        30 : 39 `|',10,13,'                             - :: 12 : x',10,13,'    Working        6 : 5    ,|',10,13,'   30 * 6 * x = 39 * 5 * 12',10,13,'    =>x = 13.$'
   exp207 db 10,13,'7)A : B = 100 : 90.',10,13,'  A : C = 100 : 72.',10,13,'  B : C = B/A x A/C = 90/100 x 100/72 = 90/72',10,13,'   When B runs 90 m, C runs 72 m.',10,13,'  When B runs 100 m, C runs (72/90 x 100)m = 80m.',10,13,'   B can give C 20m.$'
   exp208 db 10,13,'8)Distance covered by B in 9 sec. = (100/45 x 9)= 20m.$'
   exp209 db 10,13,'9)In two throws of a dice, n(S) = (6 x 6) = 36.',10,13,'  Let E = event of getting a sum ={(3,6), (4,5), (5,4), (6,3)}.',10,13,'   P(E) = n(E)/n(S) = 4/36 = 1/9$'
   exp210 db 10,13,'10)Here S = {TTT, TTH, THT, HTT, THH, HTH, HHT, HHH}',10,13,'  Let E = event of getting at most two heads.',10,13,'  Then E = {TTT, TTH, THT, HTT, THH, HTH, HHT}.',10,13,'   P(E) = n(E)/n(S) = 7/8$'
   exp211 db 10,13,'11)Let the shares of A, B, C and D be Rs. 5x, Rs. 2x, Rs. 4x and Rs. 3x respectively.',10,13,'  Then, 4x - 3x = 1000',10,13,'   =>x = 1000.',10,13,'  Bs share = Rs. 2x = Rs. (2 x 1000) = Rs. 2000.$'
   exp212 db 10,13,'12)(x * 5) = (0.75 * 8) => x = (6/5) = 1.20$'
   exp213 db 10,13,'13)The word "LEADER" contains 6 letters, namely 1L, 2E, 1A, 1D and 1R.',10,13,'    Required number of ways = 6!/[(1!)(2!)(1!)(1!)(1!)] = 360.$'
   exp214 db 10,13,'14)Since each desired number is divisible by 5, so we must have 5 at the unit place. So, there is 1 way of doing it.',10,13,'   The tens place can now be filled by any of the remaining 5 digits (2, 3, 6, 7, 9). So, there are 5 ways of filling the tens place.',10,13,'   The hundreds place can now be filled by any of the remaining 4 digits. So, there are 4 ways of filling it.',10,13,'     Required number of numbers = (1 x 5 x 4) = 20.$'
   exp215 db 10,13,'15)Amount = Rs. (30000 + 4347) = Rs. 34347.',10,13,'   Let the time be n years.',10,13,'   Then, 30000(1 + 7/100)^n = 34347.',10,13,'   => (107/100)^n = 34347/30000 = 11449/10000 = (107/100)^2',10,13,'   n = 2 years.$'
   exp216 db 10,13,'16)Amount = Rs.[25000 x (1+12/100)^3]',10,13,'   Rs.35123.20',10,13,'     C.I. = Rs. (35123.20 - 25000) = Rs. 10123.20$'
   exp217 db 10,13,'17)Speed of the train relative to man = (125/10) m/sec.',10,13,'   = (25/2) m/sec',10,13,'    = (25/2 x 18/5)km/hr',10,13,'    = 45 km/hr.',10,13,'    Let the speed of the train be x km/hr. Then, relative speed = (x - 5) km/hr.',10,13,'    x - 5 = 45 => x = 50 km/hr.$'
   exp218 db 10,13,'18)Speed = (240/24)m/sec = 10m/sec',10,13,'     Required time = (240 + 650)/10 sec = 89sec$'
   exp219 db 10,13,'19)(1*1)+1 , (2*2)+1 , (3*3)+1 , (4*4)+1 , (5*5)+1 , (6*6)+1 , (7*7)+1 , (8*8)+1',10,13,'    But, 64 is out of pattern.$'
   exp220 db 10,13,'20)Except 574, the other numbers are from the Fibonacci Series.$'
   exp301 db 10,13,'1)Greatest number of 4-digits is 9999.',10,13,' L.C.M. of 15, 25, 40 and 75 is 600.',10,13,' On dividing 9999 by 600, the remainder is 399.',10,13,'   Required number (9999 - 399) = 9600.$'
   exp302 db 10,13,'2)Given numbers are 1.08, 0.36 and 0.90.   H.C.F. of 108, 36 and 90 is 18,',10,13,'   H.C.F. of given numbers = 0.18.$'
   exp303 db 10,13,'3)Let investment in each case be Rs. (143 x 117).',10,13,' Income in 1st case = Rs.(11/143 x 143 x 117) = Rs.1287.',10,13,' Income in 2nd case = Rs.(39/(4x117) x 143 x 117) = Rs.1394.25',10,13,'  Clearly, 39/4% stock at 117 is better$'
   exp304 db 10,13,'4)For an income of Rs. 8, investment = Rs. 100.',10,13,'For an income of Rs. 6, investment = Rs.(100/8 x 6) = Rs.75.',10,13,'  Market value of Rs. 100 stock = Rs. 75.$'
   exp305 db 10,13,'5)After 10 days : 150 men had food for 35 days.',10,13,'  Suppose 125 men had food for x days. Now, Less men, More days (Indirect Proportion)',10,13,'   125 : 150 :: 35 : x <=> 125 * x = 150 * 35',10,13,'   => x = 42$'
   exp306 db 10,13,'6)Let the required weight be x kg.',10,13,'  Less weight, Less cost (Direct Proportion)',10,13,'     250 : 200 :: 60 : x       250 * x = (200 * 60)',10,13,'    =>x = 48.$'
   exp307 db 10,13,'7)To reach the winning post A will have to cover a distance of (500 - 140)m, i.e., 360 m.',10,13,'  While A covers 3 m, B covers 4 m.',10,13,'  While A covers 360 m, B covers 4/3 x 360)m = 480m',10,13,'  Thus, when A reaches the winning post, B covers 480 m and therefore remains 20 m behind.',10,13,'   A wins by 20 m.$'
   exp308 db 10,13,'8)A : B = 100 : 90.',10,13,'  A : C = 100 : 87.',10,13,'  B/C = B/A x A/C = 90/100 x 100/87 = 30/29.',10,13,'  When B runs 30 m, C runs 29 m.',10,13,'  When B runs 180 m, C runs (29/30 x 180)m = 174m.',10,13,'  B beats C by (180 - 174)m = 6m.$'
   exp309 db 10,13,'9)Total number of balls = (8 + 7 + 6) = 21.',10,13,'  Let E	= event that the ball drawn is neither red nor green',10,13,'     = event that the ball drawn is blue.',10,13,'  n(E) = 7.',10,13,'  P(E) = n(E)/n(S) = 7/21 = 1/3$'
   exp310 db 10,13,'10)P (getting a prize) = 10/(10+25) = 10/35 = 2/7$'
   exp311 db 10,13,'11)Originally, let the number of seats for Mathematics, Physics and Biology be 5x, 7x and 8x respectively.',10,13,'  Number of increased seats are (140% of 5x), (150% of 7x) and (175% of 8x).',10,13,'   =>(140/100 * 5x), (150/100 * 7x) and (175/100 * 8x)',10,13,'   =>The required ratio = 7x : 21/2x : 14x',10,13,'   =>2 : 3 : 4$'
   exp312 db 10,13,'12)Let the original salaries of Ravi and Sumit be Rs. 2x and Rs. 3x respectively.',10,13,'  Then, (2x + 4000)/(3x + 4000) = 40/57',10,13,'  =>57(2x + 4000) = 40(3x + 4000)',10,13,'  =>6x = 68,000',10,13,'  =>3x = 34,000',10,13,' Sumit present salary = (3x + 4000) = Rs.(34,000 + 4,000) = Rs.38,000$'
   exp313 db 10,13,'13)Number of ways of selecting (3 consonants out of 7) and (2 vowels out of 4)',10,13,'   = 210',10,13,'   Number of groups, each having 3 consonants and 2 vowels = 210.',10,13,'   Each group contains 5 letters.',10,13,'   Number of ways of arranging 5 letters among themselves	= 5!',10,13,'       = 5 x 4 x 3 x 2 x 1 = 120.',10,13,'   Required number of ways = (210 x 120) = 25200.$'
   exp314 db 10,13,'14)Required number of ways	= (8C5 x 10C6)',10,13,'   = 11760.$'
   exp315 db 10,13,'15)C.I. when interest compounded yearly = Rs.[5000 x (1+4/100) x {1+((5/2 x 4)/100)}]',10,13,'   =Rs.5304.',10,13,'   C.I. when interest is compounded half-yearly = Rs.[5000 + (1+2/100)^3]',10,13,'   =Rs.5306.04',10,13,'     Difference = Rs. (5306.04 - 5304) = Rs. 2.04$'
   exp316 db 10,13,'16)P(1+20/100)^n > 2P => (6/5)^n > 2.',10,13,'   Now,  (6/5 x 6/5 x 6/5 x 6/5) > 2.',10,13,'   So, n = 4 years.$'
   exp317 db 10,13,'17)Speed = (45 x 5/18)m/sec = (25/2)m/sec.',10,13,'    Time = 30 sec.',10,13,'    Let the length of bridge be x metres.',10,13,'    Then, 130 + x/30 = 25/2',10,13,'    => x = 245m.$'
   exp318 db 10,13,'18)Let the length of each train be x metres.',10,13,'   Then, distance covered = 2x metres.',10,13,'    Relative speed = (46 - 36) km/hr',10,13,'    =(25/9)m/sec',10,13,'   => 2x = 100',10,13,'    => x = 50.$'
   exp319 db 10,13,'19)Each of the numbers except 81 is a prime number.$'
   exp320 db 10,13,'20)In each number except 751, the difference of third and first digit is the middle one.$'
   exp db 10,13,'DO YOU WANT THE EXPLANATION FOR THE QUESTIONS ATTENDED (YES-1 / NO-0)?  $'
   exp1 db 10,13,'CONTINUE EXP. (YES-1 / NO-0)?  $'
   dife db 10,13,' DIFFICULTY LEVEL : EASY$'
   difm db 10,13,' DIFFICULTY LEVEL : MEDIUM$'
   difh db 10,13,' DIFFICULTY LEVEL : HARD$'       
   category01 db 10,13,'Problems on H.C.F and L.C.M : $'
   category02 db 10,13,'Stocks and Shares : $'
   category03 db 10,13,'Chain Rule : $'
   category04 db 10,13,'Races and Games : $'
   category05 db 10,13,'Probability : $'
   category06 db 10,13,'Ratio and Proportion : $'
   category07 db 10,13,'Permutation and Combination : $'
   category08 db 10,13,'Compound Interest : $'
   category09 db 10,13,'Problems on Trains : $'
   category10 db 10,13,'Find Odd one Out : $'
   choi db 10,13,'Enter your Choice : $'
   ans db 10,13,'Enter your Answer : $'
   res db 10,13,'Final Score : $' 
   ended db 10,13,'                      SESSION ENDED                $'
   a db 20 dup(?) 
    
.code

    mac macro xx,yy         
    lea dx,xx
    mov ah,yy
    int 21h     
    endm
    
    scan1 macro
        mov ah,01
        int 21h
        mov cl,al
        sub cl,30h
    endm
    
    
    
    scan macro xx
        mov ah,01    
        int 21h 
        mov cl,al
        sub cl,30h 
        cmp cl,0
        jz mainm
        jnz xx
        
        xx:
            mov [bx],ax
            inc bx    
    endm           
    
    macro 
        inc si
        inc di 
    endm
    
    scoree macro xx,yy,zz,kk,vhp,pkp 
        mov score,0
        mov bx,offset a
        mov dx,offset xx
        
         
        mov cx,pkp  
        mov si,0 
        mov di,0
        yy:
                    
        mov al,xx[di]
        add al,30h
        cmp a[si],al 
        jz zz   
        jnz kk
        
        zz:
        add score,2
        jmp vhp
        
        kk:
        sub score,1
        jmp vhp
         
        vhp:
        inc si 
        inc di
        loop yy
        
        jmp printer
                           
    endm              
             
        macro right xx
            add xx,2
            inc si
            inc di
        endm
        
        macro wrong xx
            sub xx,1
            inc si
            inc di
        endm
    
    
     scoree1 macro xx,yy,zz,kk,vhp,pkp,rebuild,cat,onedsp,twodsp,threedsp,fourdsp,fivedsp,sixdsp,sevendsp,eightdsp,ninedsp,tendsp,onevsp,twovsp,threevsp,fourvsp,fivevsp,sixvsp,sevenvsp,eightvsp,ninevsp,tenvsp,hcfp,hcfn,stshp,stshn,chrup,chrun,ragap,ragan,prop,pron,raprop,rapron,pecop,pecon,coinp,coinn,protp,protn,foop,foon,pe    
        mov bx,offset a
        mov dx,offset xx
        mov score,0
         
        mov cx,pkp  
        mov si,0 
        mov di,0
        yy:
                    
        mov al,xx[di]
        add al,30h
        cmp a[si],al 
        jz zz   
        jnz kk
        
        zz:
        add score,2
        jmp vhp
        
        kk:
        sub score,1
        jmp vhp
         
        vhp:
        inc si 
        inc di
        
        loop yy
          
        mac res,09h
        mov ax,score
        call print_num
          
               
        rebuild:
        mov bx,offset a
        mov dx,offset xx
        mov si,0 
        mov di,0
         
       cat:
        mov cx,2 
        onevsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz hcfp
        jnz hcfn
         
        hcfn:
        wrong hcfs
        loop onevsp 
        jmp twodsp         
        
        
        hcfp:
        right hcfs
        loop onevsp
        
        twodsp:
        mov cx,2 
        twovsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz stshp
        jnz stshn
         
        stshn:
        wrong stsh
        loop twovsp         
        jmp  threedsp
        
        stshp:
        right stsh
        loop twovsp
        
        threedsp:
        mov cx,2 
        threevsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz chrup
        jnz chrun
         
        chrun:
        wrong chru
        loop threevsp         
        jmp fourdsp
        
        chrup:
        right chru
        loop threevsp
        
        fourdsp:
        mov cx,2 
        fourvsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz ragap
        jnz ragan
         
        ragan:
        wrong raga
        loop fourvsp         
        jmp fivedsp
        
        ragap:
        right raga
        loop fourvsp
        
        
        fivedsp:
        mov cx,2 
        fivevsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz prop
        jnz pron
         
        pron:
        wrong pro
        loop fivevsp         
        jmp sixdsp
        
        prop:
        right pro
        loop fivevsp
        
        sixdsp:
        mov cx,2 
        sixvsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz raprop
        jnz rapron
         
        rapron:
        wrong rapro
        loop sixvsp         
        jmp sevendsp
        
        raprop:
        right rapro
        loop sixvsp
        
        sevendsp:
        mov cx,2 
        sevenvsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz pecop
        jnz pecon
         
        pecon:
        wrong peco
        loop sevenvsp         
        jmp eightdsp
        
        pecop:
        right peco
        loop sevenvsp
        
        eightdsp:
        mov cx,2 
        eightvsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz coinp
        jnz coinn
         
        coinn:
        wrong coin
        loop eightvsp         
        jmp ninedsp
        
        coinp:
        right coin
        loop eightvsp
        
        ninedsp:
        mov cx,2 
        ninevsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz protp
        jnz protn
         
        protn:
        wrong prot
        loop ninevsp         
        jmp tendsp
        
        protp:
        right prot
        loop ninevsp   
        
        tendsp:
        mov cx,2 
        tenvsp:
        mov al,xx[di] 
        add al,30h
        cmp a[si],al 
        jz foop
        jnz foon
         
        foon:
        wrong foo
        loop tenvsp         
        jmp pe
        
        foop:
        right foo
        loop tenvsp
        
        
        pe: 
        
        call printer1 
                           
      endm
      
                   
   
        
main proc 
    
    
    mov ax,@data
    mov ds,ax
    mov bx, offset a
    
    
    mac head,09h
    mainm:       
    mov hcfs,0
    mov stsh,0
    mov chru,0
    mov raga,0
    mov pro,0
    mov rapro,0
    mov peco,0
    mov coin,0
    mov prot,0
    mov foo,0   
    mov cho,0 
    mac head1,09h
    mac choice,09h
    mac term,09h
    mac choi,09h
    scan1
    cmp cl,1
    jz category
    cmp cl,2
    jz complete       
    cmp cl,3
    jz exit
    
    
    
    category:  
    
    mac choice1,09h
    mac choi,09h
    scan1
    cmp cl,1
    jz pl        
    cmp cl,2
    jz hd     
    cmp cl,3
    jz simi 
    cmp cl,4
    jz bs
    cmp cl,5
    jz mainm
    
       
    
    pl :
    mac ca11,09h
    mac ans,09h
    scan aa             
     
    
    mac ca12,09h
    mac ans,09h
    scan bb            
 
    
    mac ca13,09h
    mac ans,09h
    scan cc            
      
    
    mac ca14,09h
    mac ans,09h
    scan de            
     
    
    mac ca15,09h
    mac ans,09h
    scan ee 
               
    scoree ca1,g,h,j,k,5
    jmp category
    
hd:   
    mac ca21,09h
    mac ans,09h
    scan ff            
     
    
    mac ca22,09h
    mac ans,09h
    scan gg            
 
    
    mac ca23,09h
    mac ans,09h
    scan hh           
      
    
    mac ca24,09h
    mac ans,09h
    scan ii            
     
    
    mac ca25,09h
    mac ans,09h
    scan jj            
    scoree ca2,b,q,w,e,5
    
printer:
    mac res,09h
    mov ax,score
    call print_num
    jmp mainm 
    
      
macro p xx 
    mov ax,xx
    call print_num
    endm    
    
printer1:    
    mac category01,09h
    p hcfs 
    mac category02,09h
    p stsh
    mac category03,09h
    p chru             
    mac category04,09h
    p raga            
    mac category05,09h
    p pro             
    mac category06,09h
    p rapro             
    mac category07,09h
    p peco           
    mac category08,09h
    p coin            
    mac category09,09h
    p prot            
    mac category10,09h
    p foo 
    ret       
    
complete:
    mov cx,score
    cmp cx,40
    ja easy
    exam:
    cmp cx,30
    ja hard
    jnz testify
    testify: 
        cmp cx,15
        ja medium
        jnz easy
    
    easy:
        mac dife,09h
        mac c101,09h
        mac ans,09h
        scan kk            
         
    
        mac c102,09h
        mac ans,09h
        scan ll            
        
        
        mac c103,09h
        mac ans,09h
        scan mm            
          
        
        mac c104,09h
        mac ans,09h      
        scan nn            
         
        
        mac c105,09h
        mac ans,09h
        scan oo            
          
        mac c106,09h
        mac ans,09h
        scan pp             
         
        
        mac c107,09h
        mac ans,09h
        scan qq            
        
        
        mac c108,09h
        mac ans,09h
        scan rr            
          
        
        mac c109,09h
        mac ans,09h      
        scan rs           
         
        
        mac c110,09h
        mac ans,09h
        scan tt  
        
        mac c111,09h
        mac ans,09h
        scan uu           
         
        
        mac c112,09h
        mac ans,09h
        scan vv            
        
        
        mac c113,09h
        mac ans,09h
        scan xy             
          
        
        mac c114,09h
        mac ans,09h      
        scan yx            
         
        
        mac c115,09h
        mac ans,09h
        scan zx   
        
        mac c116,09h
        mac ans,09h
        scan as            
         
        
        mac c117,09h
        mac ans,09h
        scan like            
        
        
        mac c118,09h
        mac ans,09h
        scan was            
          
        
        mac c119,09h
        mac ans,09h      
        scan am            
         
        
        mac c120,09h
        mac ans,09h
        scan im
        scoree1 c1,hft,hpp,kfc,bid,20,rebuildd,catt,onedspp,twodspp,threedspp,fourdspp,fivedspp,sixdspp,sevendspp,eightdspp,ninedspp,tendspp,onevspp,twovspp,threevspp,fourvspp,fivevspp,sixvspp,sevenvspp,eightvspp,ninevspp,tenvspp,hcfpp,hcfnn,stshpp,stshnn,chrupp,chrunn,ragapp,ragann,propp,pronn,rapropp,papronn,pecopp,peconn,coinpp,coinnn,protpp,protnn,foopp,foonn,pee    
        mac exp,09h
        scan1
        cmp cl,0     
        jz mainm
        cmp cl,1
        jz exprinter 
         
    
    medium:
        mac difm,09h
        mac c201,09h
        mac ans,09h
        scan kkx            
         
        
        mac c202,09h
        mac ans,09h
        scan llx            
     
        
        mac c203,09h
        mac ans,09h
        scan mmx            
          
        
        mac c204,09h
        mac ans,09h      
        scan nnx            
         
        
        mac c205,09h
        mac ans,09h
        scan oox            
          
        mac c206,09h
        mac ans,09h
        scan ppx             
         
        
        mac c207,09h
        mac ans,09h
        scan qqx            
     
        
        mac c208,09h
        mac ans,09h
        scan rrx            
          
        
        mac c209,09h
        mac ans,09h      
        scan rsx           
         
        
        mac c210,09h
        mac ans,09h
        scan ttx  
        
        mac c211,09h
        mac ans,09h
        scan uux           
         
        
        mac c212,09h
        mac ans,09h
        scan vvx            
     
        
        mac c213,09h
        mac ans,09h
        scan xyx             
          
        
        mac c214,09h
        mac ans,09h      
        scan yxx            
         
        
        mac c215,09h
        mac ans,09h
        scan zxx   
        
        mac c216,09h
        mac ans,09h
        scan asx            
         
        
        mac c217,09h
        mac ans,09h
        scan likex            
     
        
        mac c218,09h
        mac ans,09h
        scan wasx            
          
        
        mac c219,09h
        mac ans,09h      
        scan amx            
         
        
        mac c220,09h
        mac ans,09h
        scan imx
        scoree1 c2,hftx,hppx,kfcx,bidx,20,rebuilld,caat,onedssp,twodssp,threedssp,fourdssp,fivedssp,sixdssp,sevendssp,eightdssp,ninedssp,tendssp,onevssp,twovssp,threevssp,fourvssp,fivevssp,sixvssp,sevenvssp,eightvssp,ninevssp,tenvssp,phcfp,nhcfn,pstshp,nstshn,pchrup,nchrun,pragap,nragan,pprop,npron,praprop,rapronnn,ppecop,npecon,pcoinp,ncoinn,pprotp,nprotn,pfoop,nfoon,ppe    
        mac exp,09h
        scan1
        cmp cl,0     
        jz mainm
        cmp cl,1
        jz expprinter 
            
    
    hard:           
        mac difh,09h
        mac c301,09h
        mac ans,09h
        scan kky            
         
        
        mac c302,09h
        mac ans,09h
        scan lly            
     
        
        mac c303,09h
        mac ans,09h
        scan mmy            
          
        
        mac c304,09h
        mac ans,09h      
        scan nny            
         
        
        mac c305,09h
        mac ans,09h
        scan ooy            
          
        mac c306,09h
        mac ans,09h
        scan ppy             
         
        
        mac c307,09h
        mac ans,09h
        scan qqy            
     
        
        mac c308,09h
        mac ans,09h
        scan rry            
          
        
        mac c309,09h
        mac ans,09h      
        scan rsy           
         
        
        mac c310,09h
        mac ans,09h
        scan tty  
        
        mac c311,09h
        mac ans,09h
        scan uuy           
         
        
        mac c312,09h
        mac ans,09h
        scan vvy           
     
        
        mac c313,09h
        mac ans,09h
        scan xyy             
          
        
        mac c314,09h
        mac ans,09h      
        scan yxy            
         
        
        mac c315,09h
        mac ans,09h
        scan zxy   
        
        mac c316,09h
        mac ans,09h
        scan asy            
         
        
        mac c317,09h
        mac ans,09h
        scan likey            
     
        
        mac c318,09h
        mac ans,09h
        scan wasy            
          
        
        mac c319,09h
        mac ans,09h      
        scan amy            
         
        
        mac c320,09h
        mac ans,09h
        scan imy  
        
        scoree1 c3,hfty,hppy,kfcy,bidy,20,rebbuild,ccat,oneddsp,twoddsp,threeddsp,fourddsp,fiveddsp,sixddsp,sevenddsp,eightddsp,nineddsp,tenddsp,oonevsp,ttwovsp,tthreevsp,ffourvsp,ffivevsp,ssixvsp,ssevenvsp,eeightvsp,nninevsp,ttenvsp,hcfop,hcfon,stshop,stshon,chroup,chruon,ragaop,ragaon,proop,proon,raproop,paproon,pecoop,pecoon,cooinp,cooinn,prootp,prootn,fooop,fooon,pep    
        mac exp,09h
        scan1
        cmp cl,0     
        jz mainm
        cmp cl,1
        jz exppprinter 
    
    
simi:
    mac ca31,09h
    mac ans,09h
    scan uve            
     
    
    mac ca32,09h
    mac ans,09h
    scan are            
 
    
    mac ca33,09h
    mac ans,09h
    scan were            
      
    
    mac ca34,09h
    mac ans,09h      
    scan mine            
     
    
    mac ca35,09h                          
    mac ans,09h
    scan kgf            
      
    
    scoree ca3,ht,hp,wtf,byd,5
    jmp category 
    
bs:
    mac ca41,09h
    mac ans,09h
    scan kcf            
     
    
    mac ca42,09h
    mac ans,09h
    scan mcd            
 
    
    mac ca43,09h
    mac ans,09h
    scan mb            
      
    
    mac ca44,09h
    mac ans,09h
    scan hid            
     
    
    mac ca45,09h
    mac ans,09h
    scan hdd            
      
    
    scoree ca4,hm,hr,wf,be,5
    jmp category
    
exprinter:
    mac exp101,09h
    mac exp102,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp103,09h
    mac exp104,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp105,09h
    mac exp106,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp107,09h
    mac exp108,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp109,09h
    mac exp110,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp111,09h
    mac exp112,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp113,09h
    mac exp114,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp115,09h
    mac exp116,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp117,09h
    mac exp118,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp119,09h
    mac exp120,09h 
    jmp mainm

expprinter:
    mac exp201,09h
    mac exp202,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp203,09h
    mac exp204,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp205,09h
    mac exp206,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp207,09h
    mac exp208,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp209,09h
    mac exp210,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp211,09h
    mac exp212,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp213,09h
    mac exp214,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp215,09h
    mac exp216,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp217,09h
    mac exp218,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp219,09h
    mac exp220,09h 
    jmp mainm


exppprinter:
    mac exp301,09h
    mac exp302,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp303,09h
    mac exp304,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp305,09h
    mac exp306,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp307,09h
    mac exp308,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp309,09h
    mac exp310,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp311,09h
    mac exp312,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp313,09h
    mac exp314,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp315,09h
    mac exp316,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp317,09h
    mac exp318,09h
    mac exp1,09h
    scan1
    cmp cl,0
    jz mainm
    cmp cl,1
    mac exp319,09h
    mac exp320,09h 
    jmp mainm
    
exit:
    mac ended,09h
    hlt
     
main endp            
hlt
        
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_NUM
DEFINE_SCAN_NUM    
