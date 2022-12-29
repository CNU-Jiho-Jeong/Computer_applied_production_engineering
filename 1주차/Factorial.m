function Factorial(n) % 함수 정의 / 'Factorial(변수)'로 실행한다.

a=1 % a의 초기값 1 -> n부터 곱해주기 위해서다.
while n>1
    a=a*n
    n=n-1
end % 매트랩에서는 end를 써주는 것을 잊지 말자.

disp(a) % disp: 변수 값 표시 / a 초기값 부터 최종 값까지 나타난다.

