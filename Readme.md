# 프로젝트 정리

### 1. 실험조건
![image](https://user-images.githubusercontent.com/108641325/205651220-c538f950-54aa-44fc-9d3c-a847421e30cc.png)



### 2. 실험 결과 분석

- **Experiment1 & Experiment2**

![image](https://user-images.githubusercontent.com/108641325/205651922-7400d91d-4e35-4fd6-93df-9f40d083eece.png)

Experiment2의 Steady state error가 Experiment1의 Steady state error보다 작다. 

또한 위 그래프를 통해 모터가 원위치에 도착한 후에, Experiment2에서의 모터의 진동이 Experiment1에서의 모터의 진동보다 작다는 것을 알 수 있다. 

=> Ki=0.5 / Kp=15 / Kd=0.5 / Ta = 0.25s 인 조건에서 더욱 안정적이고 오차가 작은 이송이 가능할 것이다(아무래도 비교적 안정적인 PID Gain 값에, 가속시간을 조금 더 느리게 
해줘서 안정적인 듯 하다).

---

- **Experiment1 & Experiment3**

![image](https://user-images.githubusercontent.com/108641325/205652480-8b2199e1-9119-49eb-9d97-2f761b5983a0.png)

모터가 이송을 시작하고 나서부터, Experiment3의 추종 오차가 Experiment1에 비해 크게 발생한다. 불안정한 PID gain 값 때문이다. 

또한, 위 그래프를 통해 모터가 원위치에 도착한 후에, Experiment3에서의 모터의 진동이 Experiment1에서의 모터의 진동보다 크다는 것을 알 수 있다. 

진동 지속시간도 Experiment1에 비해 Experiment 3가 월등히 긴 것을 알 수 있다. 이것 또한 불안정한 PID Gain 값 때문이다. 

그리고, Experiment1의 Steady state error가 Experiment3의 Steady state error보다 작다. 

그러므로 Experiment3의 조건보다는, Kp 값을 키워 안정적인 이송을 하는 것이 더 나아 보인다. 

---
### 결론 1

### => Experiment2, 그러니까 Ki=0.5 / Kp=15 / Kd=0.5 / Ta = 0.25s 인 조건이 가장 좋은 듯 하다.

### => 모터 이송시, 적절한 PID Gain 값과, 너무 빠르지 않은 가속 시간이 필요할 것이다.

---

### 3. 시뮬레이션 결과 vs 실험 결과

- Experiment 1

![image](https://user-images.githubusercontent.com/108641325/205654624-f62649ea-0e92-447a-b746-8dfdf99b8e2b.png)

![image](https://user-images.githubusercontent.com/108641325/205654672-c9aa999e-fc64-4d47-8fb5-fe22127534e8.png)

실제 이송에서, 모터가 움직이는데까지 걸리는 시간이 시뮬레이션보다 더 길다. 

그리고 시뮬레이션에서는 추종 오차가 거의 일정한 구간이 드문드문 있는 반면, 실제 이송에서 추종 오차는 수렴하기 전까지 값이 지속적으로 변하는 양상을 보인다. 

또한, 추종 오차 값은 실제 이송에서 약간 더 큰 것으로 보인다. 물론 차이가 크지는 않다고 판단된다. 

시뮬레이션에서는 모터가 원위치에 도달하고 난 후 추종 오차가 바로 수렴하지만, 실제 이송에서는 모터의 진동 때문에 추종 오차가 바로 수렴하지 않는다. 

마지막으로, 시뮬레이션에서는 추종 오차가 음수 값이지만, 실제 이송에서는 양수 값으로 나타났다.

---

- Experiment 2

![image](https://user-images.githubusercontent.com/108641325/205655367-20a38b74-f8b5-41c9-b975-e1916cf8e86e.png)

![image](https://user-images.githubusercontent.com/108641325/205655407-e053e943-bc48-42f5-a5e9-5551957d8bdc.png)

실제 이송에서, 모터가 움직이는데까지 걸리는 시간이 시뮬레이션보다 더 길다. 

그리고 시뮬레이션에서는 추종 오차가 거의 일정한 구간이 드문드문 있는 반면, 실제 이송에서 추종 오차는 수렴하기 전까지 값이 지속적으로 변하는 양상을 보인다. 또한, 추종 오차 값은 실제 이송에서 더 큰 것으로 보인다. 

Experiment1에서는 거의 100mm까지 모터가 이송되지만, Experiment2에서는 시뮬레이션에서나 실제 이송에서나 모터가 Experiment1 보다도 짧게 이송된다(100mm에 미치지 못하는 
것이 그래프에서 잘 드러난다). 

시뮬레이션에서는 모터가 원위치에 도달하고 난 후 추종 오차가 바로 수렴하지만, 실제 이송에서는 모터의 진동 때문에 추종 오차가 바로 수렴하지 않는다. 마지막으로, 시뮬레이션에서는 추종 오차가 양수 값이지만, 실제 이송에서는 음수 값으로 나타났다.

---

- Experiment 3

![image](https://user-images.githubusercontent.com/108641325/205655633-61a74531-9248-45b0-9d50-fc354b55a4b6.png)

![image](https://user-images.githubusercontent.com/108641325/205656064-895cf743-29fb-4fe0-84df-4761d2cd7895.png)

![image](https://user-images.githubusercontent.com/108641325/205656108-43ffe491-f335-4a5d-b106-59fe00bfef2c.png)

실제 이송에서, 모터가 움직이는데까지 걸리는 시간이 시뮬레이션보다 더 길다. 하지만, Experiment1, Experiment2 보다는 걸리는 시간이 짧다. 

그리고 시뮬레이션에서는 추종 오차가 거의 일정한 구간이 있는 반면, 실제 이송에서 추종 오차는 수렴하기 전까지 값이 지속적으로 변하는 양상을 보인다. 그리고 변하는 폭이 크다. 

또한, 추종 오차 값은 실제 이송에서 훨씬 더 큰 것으로 보인다. 시뮬레이션에서는 모터가 원위치에 도달하고 난 후 추종 오차가 바로 수렴하지만, 실제 이송에서는 모터의 진동 때문에 추종 오차가 바로 수렴하지 않는다. 그리고 Experiment1, Experiment2에 비해 수렴하는데 있어 시간이 매우 오래 걸린다. 

또한, 시뮬레이션에서는 모터가 원위치에 도달하고 나서 변위에 변화가 없지만, 실제 이송에서는 변화의 폭이 심하다. 그러니까, 시뮬레이션과는 달리 원위치에 도달하고 나서도 모터가 
계속 진동한다는 것이다. 

마지막으로, 시뮬레이션에서는 추종 오차가 양수 값이지만, 실제 이송에서는 음수 값으로 나타났다.

---

### 결론 2

### => 1. 보통 실제 이송에서, 모터가 움직이는데까지 걸리는 시간이 시뮬레이션보다 더 길다.
### => 2. 실제 이송에서는, 모터가 원위치에 도달하고 나서도 모터의 진동 때문에 실제 오차가 수렴하기 전까지 계속 변한다(그 변화의 폭이 크다).

---
