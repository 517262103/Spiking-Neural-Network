%��ʮ����ѧ�ַ�ͼƬ�����ʱ������
%[spikes1,pixelnum1] = encoder(image1);
%[spikes4,pixelnum4] = encoder(image4);
%[spikes5,pixelnum5] = encoder(image5);
%[spikes6,pixelnum6] = encoder(image6);
%[spikes7,pixelnum7] = encoder(image7);
%[spikes8,pixelnum8] = encoder(image8);
%[spikes9,pixelnum9] = encoder(image9);
%[spikes10,pixelnum10] = encoder(image10);
%spiking = [spikes1; spikes2; spikes3; spikes4; spikes5; spikes6; spikes7; spikes8; spikes9; spikes10];
%save spiking spiking;

label1 = 0;%��ǩ1Ϊ�����������������������Ȩ��
label2 = 1;%��ǩ2Ϊ���������������������Ȩ��

% �������10��Ȩ��ֵ 
% w1 = rand(1,400);
% w2 = rand(1,400);
% w3 = rand(1,400);
% w4 = rand(1,400);
% w5 = rand(1,400);
% w6 = rand(1,400);
% w7 = rand(1,400);
% w8 = rand(1,400);
% w9 = rand(1,400);
% w10 = rand(1,400);
% W = [w1; w2; w3; w4; w5; w6; w7; w8; w9; w10];


%ѵ��ʮ�������Ԫʶ��image1~10��ʹ��Ӧ�����Ԫ������������
for k = 1 : 1 : 300 %100��ѵ��
    for i = 1 : 1 : 10 %10�������Ԫ
        for j = 1 : 1 : 10 %10������ʱ������ 
            [val,maxT,maxU] = tempotron(spiking(j,:), W(i,:));
            if j == i
                if val == 0
                    W(i,:) = train(spiking(j,:), W(i,:), label2);
                    %[val,maxT,maxI,U1,T1] = tempotron(spiking(j,:),W(i,:));
                    %plot(T1,U1),xlabel('ʱ��(ms)'),ylabel('ģ��ѹ(mv)');
                end
            else
                if val == 1
                    W(i,:) = train(spiking(j,:), W(i,:), label1);
                    %[val,maxT,maxI,U1,T1] = tempotron(spiking(j,:),W(i,:));
                    %plot(T1,U1),xlabel('ʱ��(ms)'),ylabel('ģ��ѹ(mv)');
                end                
            end
        end
    end
    %resultname = strcat('w_',num2str(k),'.mat');
    %save(resultname,'W');
end
save W_new W;


