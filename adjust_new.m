function w = adjust_new(spikes,w,val,maxT,maxU)
    lambda = 0.05;
    thes = 1;
    spikenum = size(spikes,2);
    %�������������Ȩ������w��ʹ����
    if val == 0
        for i = 1 : 1 : spikenum
            if spikes(i)<maxT
                %��̬����Ȩֵ
                w(i) = w(i) + (thes-maxU) * lambda * k(maxT-spikes(i));
            end
        end
    %��֮�����Сw��ʹ������
    else
        for i = 1 : 1 : spikenum
            if spikes(i)<maxT
                if maxU > thes
                    w(i) = w(i) - (maxU-thes) * lambda * k(maxT-spikes(i));
                else
                    w(i) = w(i) - lambda * k(maxT-spikes(i));
                end
            end
        end
     end
end