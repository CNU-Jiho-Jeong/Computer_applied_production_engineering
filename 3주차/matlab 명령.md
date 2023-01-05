### 1. 엑셀 파일 작업 공간으로 불러오기

fx >> [변수이름] = xlsread('경로\엑셀파일이름.xlsx');

ex) [dataset1] = xlsread('C:\Users\craft\Desktop\dataset1.xlsx');


### 2. mat 파일 작업 공간으로 불러오기 (load)

fx >> load('파일이름.mat');

ex) load('dataset2.mat');


### 3. 합, 평균, 분산, 표준편차, 최솟값, 최댓값, 크기

a = [1 2 3 4 5];

---

sum(a)

ans =

    15
	
---

mean(a)

ans =

     3

---

var(a) (분산)

ans =

    2.5000
	
---	

std(a) (표준편차)

ans =

    1.5811
	
---	

min(a)

ans =

     1
	 
---

max(a)

ans =

     5
	 
---

size(a)

ans =

     1     5  (1줄 / 5개 요소)
     
