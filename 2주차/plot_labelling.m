x = 0:pi/100:2*pi 
% 0부터 2파이까지 파이/100 간격만큼!
% 따로 라이브러리 import 안해도 pi 바로 사용 가능
y = sin(x)

plot(x,y,'r--')

% plot함수 밑에다가 작성!!!!
xlabel('x', 'FontSize', 14, 'Fontname', 'arial'); % x축 이름(라벨) / 크기와 글꼴 지정가능
ylabel('sin(x)', 'FontSize', 14, 'Fontname', 'arial'); % y축 이름(라벨) / 크기와 글꼴 지정가능
title('Plot of the Sine Function', 'FontSize', 14, 'Fontname', 'arial'); % 함수 제목

% Figure에서 '편집' - 'Figure 속성' 메뉴로 들어가 속성 변환 가능