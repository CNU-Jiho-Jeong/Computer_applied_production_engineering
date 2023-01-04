d1 = data1
d2 = data2

% 첫 번째 그래프 시작점을 0으로 설정! 
d1(:,2) = d1(:,2) - d1(1,2)


subplot(5,1,1)
plot(d1(:,1), d1(:,2)*1000000, 'k'); 
% x축: data1의 1열 전부
% y축: data1의 2열 전부*1000000
% linespec: 검은색 선
axis([0 4 -10 100]); % x축 범위 0~4, y축 범위 -10~100
xlabel("Time (s)");
ylabel("Position (um)");

subplot(5,1,2)
plot(d1(:,1), d1(:,4), 'k-', 'LineWidth',1);
% 검은색 실선 & 선굵기 1
axis([0 4 -150 150]);
xlabel("Time (s)");
ylabel("Friction:M (N)");

subplot(5,1,3)
plot(d2(:,1), d2(:,7), 'b-', 'LineWidth', 2);
axis([0 4 -150 150]);
xlabel("Time (s)");
ylabel("Friction:E1 (N)");

subplot(5,1,4)
plot(d1(:,1), d1(:,7),'r:', 'LineWidth', 2);
axis([0 4 -150 150])
xlabel("Time (s)");
ylabel("Friction:E2 (N)");

subplot(5,1,5)
plot(d2(:,1), d2(:,4)-d2(:,7), 'b-', 'LineWidth',2);
% y축: 'd2의 4열 데이터' -  'd2의 7열 데이터'
hold on; % 이전 그래프 유지
plot(d1(:,1), d1(:,4)-d1(:,7), 'r:', 'LineWidth', 2);
hold off; % 그래프 유지 해제 (다음에 그릴 땐 초기화 된다.)
axis([0 4 -60 60]);
xlabel("Time (s)");
ylabel("Friction:Err (N)");

%{ 

- 한 번에 여러 개의 요소 참조 

A 행렬이 있다고 하자. 이때 A의 두 번째 행에 있는 첫 번째 요소와 세 번째 요소에 액세스 한다면
r = A(2,[1 3]) 
이때 r은 1x2 행렬이다. 

%}


