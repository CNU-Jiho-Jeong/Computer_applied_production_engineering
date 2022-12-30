t = 0:pi/100:2*pi
y = sin(t)

figure('name', '[Step]', 'units', 'points', 'position', [10 10 400 400])
% figure는 새 Figure 창을 만든다. 
% Figure는 현재 Figure를 의미한다.

% 'name': Figure 의 이름 
% 'color': Figure 배경색 
% 'units': Figure 측정 단위
% 'position': 그리기 가능한 영역의 위치와 크기, [left bottom width height]

plot(t,y,'k-','LineWidth',2) % 검은색 실선
grid on % 현재 좌표축의 주 그리드 선을 표시
hold on % 기존 플롯을 유지한다!
plot(t,y*2,'r:','LineWidth',2) % 빨간색 점선 형태
hold off
legend('line1', 'line2')

axis([0 2*pi -3 3]) % axis(limits)는 현재 좌표축의 제한을 지정 
% x축 범위 0~2파이 / y축 범위 -3~3

xlabel('Time(s)', 'FontSize', 14, 'Fontname', 'arial')
ylabel('Result', 'FontSize', 14, 'Fontname', 'arial')
