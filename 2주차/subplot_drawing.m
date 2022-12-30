% m 파일이름 subplot으로 하지 말기!  
% subplot(m,n,p)는 현재 Figure를 m×n 그리드로 나누고, p로 지정된 위치에 좌표축을 만든다.

subplot(1,2,1) % 현재 figure를 1행 2열 그리드로 나누고, 1번째 위치에 플롯팅
x = 0:pi/100:2*pi
y = sin(x)
plot(x,y)

subplot(1,2,2)
z = cos(x)
plot(x,z)
