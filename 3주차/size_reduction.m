d1 = data1
d2 = data2

k = 1
d3 = d1
d4 = d2

clear d1 & d2 % d1, d2 저장해두고 삭제

for i=1:max(size(d3)) % i는 1부터 d3 데이터 갯수 최댓값까지 1씩 증가
    if rem(i,20)==1 % rem(a,b): a를 b로 나눈 나머지 -> 여기서는 i 나누기 20의 나머지가 1이면
        d1(k,:) = d3(i,:)   
        d2(k,:) = d4(i,:)
        k = k+1
        % 기존에 저장해둔 데이터의 1행, 21행, 41행, ...을 1행, 2행, 3행, ... 데이터로 갱신한다
        % -> 그래프가 한결 깔끔해진다(덜 촘촘해진다.)
    end
end

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


