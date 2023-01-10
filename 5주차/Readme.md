### 컴퓨터 응용 생산공학 5주차 실습 폴더입니다

---

![image](https://user-images.githubusercontent.com/108641325/211150914-7723eb2f-9417-440f-8c68-17efa97fc162.png)


### 1. Step 블록

- 지정된 시간에서 정의 가능한 두 개의 수준 간 스텝을 제공. 시뮬레이션 시간이 스텝 시간 파라미터 값보다 작으면 블록의 출력은 파라미터의 초기값이 되고, 시뮬레이션 시간이 스텝 시간보다 크거나 같으면 출력은 파라미터의 최종값이 된다. 
- step(sys)는 단위 진폭의 계단 입력에 대한 동적 시스템 모델의 응답을 플로팅.

### 2. 전달함수 블록(Transfer Fcn)

- Transfer Fcn 블록은 라플라스 영역 변수 s의 전달 함수를 사용해 선형 시스템을 모델링한다. 이 블록은 SISO(단일 입력 단일 출력) 시스템 및 SIMO(단일 입력 다중 출력) 시스템을 모델링할 수 있다.


### 3. 단위 계단 응답 (Unit Step Response)

- 단위계단함수에 대한 시스템의 시간응답 특성
  - 시스템이 시간적으로 얼마나 빨리 반응(속응성)하는가 등
  - 이들을 정량화시키는 척도들 


### 4. 단위 계단 시간응답의 주요 척도

  - 상승 시간 (Rise Time)  tr : 신속성 척도
  
     - 일정한 정상상태 최종값의 10% 에서 90% 로 상승하여 도달할 때까지 소요되는 시간

  - 정착 시간 (Settling Time)  ts : 빠른 안정화 척도
  
     - 최종값의 2% 또는 5% 이내에 들어가 머무르는데 걸리는 시간(제어시스템이 허용오차 이내에 들어오는데 걸리는 시간 척도)

  - 지연 시간 (Delay Time)  td
  
     - 최종값의 50%에 도달하는 시간

  - 첨두값 시간 (Peak Time)  tp
  
     - 처음으로 첨두치(peak)에 도달하기까지 걸리는 시간

  - 최대 오버슈트 (Maximum Overshoot) : 안정성 척도
  
     - 최종 정상상태 값과의 오차 (제어시스템의 상대 안정도의 척도)

  - 정상상태 오차  ess : 정확도 척도
  
      - 과도응답이 소멸한 후에도 남게되는 정상상태응답과의 오차

![image](https://user-images.githubusercontent.com/108641325/211256739-24655f05-a19e-4da8-8c21-ed0f8a565efc.png)


### 5. 정상상태 응답

- 어떤 계(系)나 회로 또는 그 구성 요소로의 **입력이 어느 일정값을 취했을 때** 그에 대하여 계나 회로, 또는 요소가 **궁극적으로 취하는 정상적인 상태**를 말한다. <전자용어사전>

### 6. 과도응답

- 일반적으로 **입력의 임의의 시간적 변화에 대하여** 계(系)의 **출력이 정상상태에 이르기까지의 경과상황**을 말한다. <전자용어사전>

<img src = "https://user-images.githubusercontent.com/108641325/211262548-2d54f8ff-d4f7-4eb9-912d-affcfbd3fc5a.png" height="300px" width="400px">

### 7. Homework

<img src = "https://user-images.githubusercontent.com/108641325/211263573-79f533ba-fd0a-4e2d-b340-6d1d7c2cbdbc.png" height="500px" width="500px">


- '댐핑', 'back emf 상수', '토크 상수, '저항'은 '정상 상태 속도'와 **반비례**한다(위 그림에서 두 번째 식, 그러니까 정상상태일 때의 식 참조.)
  - back emf 상수 = 토크 상수
  - '관성'은 '정상 상태 속도'에 영향을 미치지 못한다(정상상태일 때의 식 참조. 정상상태일 때 관성에 대한 항이 사라진다.)
  
  => '전압'은 '저항'에 비례하므로, '전압'은 '정상 상태 속도'와 **반비례**한다.

- '저항', '관성'은 '과도응답'과 **비례**한다. 
  
  => '전압'은 '저항'에 비례하므로, '전압'은 '과도응답'에 **비례**한다.

- '토크 상수', 'back emf 상수'(토크 상수와 back emf 상수는 서로 같다), '댐핑'은 과도응답과 **반비례**한다.

---

참고1(아래 그래프들을 토대로 각각의 파라미터의 변화에 따라 과도응답이 어떻게 변하는지 알 수 있다.)

**1. 기존 그래프**

<img src = "https://user-images.githubusercontent.com/108641325/211300791-787f4d3c-4b1b-451d-b74e-e7ccda65ba33.png" height="400px" width="400px">


**2. 과도응답이 짧은 경우**

<img src = "https://user-images.githubusercontent.com/108641325/211301430-e990afe2-2ecb-4948-b677-1e221d33e8df.png" height="400px" width="400px">


**3. 과도응답이 긴 경우**

<img src = "https://user-images.githubusercontent.com/108641325/211301071-e3374496-3ca3-4bbc-8a87-aa21f0108ab8.png" height="400px" width="400px"> 

---

참고2

(아래 그래프들은 '댐핑', 'back emf 상수', '토크 상수, '저항' 을 키웠을 때 볼 수 있는 그래프들이다. 이를 통해 이들이 정상 상태 속도와 반비례함을 알 수 있다.)

1. 저항을 키울 때

<img src = "https://user-images.githubusercontent.com/108641325/211494607-80e649d2-0bd5-4424-8612-dff47b922f65.png" height="400px" width="400px"> 


2. 댐핑을 키울 때

<img src = "https://user-images.githubusercontent.com/108641325/211495068-5d2dd1d9-9fc5-4b1b-9988-853c858f931f.png" height="400px" width="400px"> 


3. back emf 상수 및 토크 상수를 키울 때

<img src = "https://user-images.githubusercontent.com/108641325/211495639-4c76d3a7-fa74-4213-9d1a-98c602064d26.png" height="400px" width="400px">


---

출처

http://www.ktword.co.kr/test/view/view.php?m_temp1=1334

https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=goldfinal&logNo=221357906192

https://cnumsc.wixsite.com/cnumsc

