R = 0.1 % 저항
J = 10 % 관성
b = 0.1 % 댐핑
Kt = 1 % 토크 상수
Ke = 1 % Back EMF 상수 혹은 모터 속도 상수라고 한다.
% Ke = 모터 회전 속도 / 전압
Tau_m = R*J/(R*b+Kt*Ke)
K_V = Kt/(R*b+Kt*Ke)

t = 0:0.001:10;

for i=1:max(size(t))
    if t(i)<1
        simin(i,:) = [t(i),0]
    else
        simin(i,:) = [t(i),1]
    end % if-else도 end 써주어야 함.
end

sim('basic_motor_simulation2_simulink.slx', [0 10])
% paramStruct 구조체로 지정한 모델 구성 파라미터 값([0 10])을 사용하여 import_data.slx를 시뮬레이션 해라.
data = [out.simout.time out.simout.signals.values]
plot(data(:,1), data(:,2), 'k')