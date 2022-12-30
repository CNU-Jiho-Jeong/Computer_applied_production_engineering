x = 0:pi/100:2*pi
y = sin(x)
plot(x,y)

hold on % 좌표축에 플롯이 새로 추가될 때, 기존 플롯이 삭제되지 않도록 함.

y2 = cos(x) % 코사인 함수
plot(x,y2,'r:')
legend('sin', 'cos') % 범례. 사인과 코사인을 표시해주어 구분한다.

hold off % 기존 플롯 유지 상태 꺼뜨리기
