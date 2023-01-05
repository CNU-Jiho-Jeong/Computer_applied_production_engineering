d1 = data1
d2 = data2

clear a & b 
% clear: 현재 작업 공간에서 변수를 제거 -> 메모리 늘리기 
a(:,1) = d1(:,7)
b(:,1) = d2(:,7)

for i=10:max(size(a)) % i는 10부터 a의 각 차원 길이 중 가장 큰 값까지 1씩 증가.
    % size(A) 는 A 의 각 차원 길이를 요소로 갖는 행 벡터를 반환
    % 예를 들어 A 가 3×4 행렬이면 size(A) 는 벡터 [3 4] 를 반환
    % max(size(a)) -> 각 차원 길이 중 가장 큰 값 
    d1(i,7) = sum(a(i-9:i,1))/10
    d2(i,7) = sum(b(i-9:i,1))/10
end

%{
- 이동 평균 필터링
  : 연속된 데이터에서 인접한 n개 데이터의 평균을 구하여 순차적으로 데이터를 필터링하는 기법
%}

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


