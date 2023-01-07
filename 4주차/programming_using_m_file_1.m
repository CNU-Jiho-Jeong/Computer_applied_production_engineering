% 매트랩 연산자와 특수문자(하단 링크 참조)
% https://kr.mathworks.com/help/matlab/matlab_prog/matlab-operators-and-special-characters.html

t = 0:0.001:8
simin = [t', sin(t)'] % 입력 데이터 (x축 t', y축 sin(t)')
% ' : 전치(transpose)
sim("import_data.slx", [0 10]) % import_data.slx를 시뮬레이션 해라. x영역을 0에서 10까지

data = [out.simout.time out.simout.signals.values]
% out.simout.signals.values 는 두 개의 열을 가지고 있다.(하나는 그냥 사인 곡선의 값, 다른 하나는 사인 곡선의 적분 값) 
% out.simout.time은 한 개의 열을 가지고 있다.
% => data는 1+2==3 개의 열을 가지고 있다.
plot(data(:,1), data(:,2), 'k', data(:,1), data(:,3),'r:') 
% 그래프 두 개 그리기
% 그래프 1: x: 시간 / y: data 2번째 열 데이터
% 그래프 2: x: 시간 / y: data 3번째 열 데이터
