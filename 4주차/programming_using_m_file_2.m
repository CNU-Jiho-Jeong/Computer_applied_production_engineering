simin = [data1(:,1), data1(:,3)]
sim("import_data.slx", [0 4])
data = [out.simout.time out.simout.signals.values]

plot(data(:,1), data(:,2), 'k')
hold on % 그래프 유지(hold off 나오기 전까지 그래프들을 유지시켜 준다.)
plot(data(:,1), data(:,3),'b')
plot(data1(:,1), data1(:,2), 'r:')
hold off
