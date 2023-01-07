R = 0.1 % 저항
J = 10 % 관성
b = 0.1 % 댐핑
Kt = 1 % 토크 상수
Ke = 1 % Back EMF 상수 혹은 모터 속도 상수라고 한다.
% Ke = 모터 회전 속도 / 전압
Tau_m = R*J/(R*b+Kt*Ke)
K_V = Kt/(R*b+Kt*Ke)

%{

simulink 전달함수에서 분자와 분모 계수는 s의 거듭제곱 내림차순으로 지정한다.

ex) Fcn = 1 / 2s^2 + 3s +4
 => numerator = [1] (분자계수)
    denominator = [2 3 4] (분모계수)

%}