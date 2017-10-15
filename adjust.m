function w = adjust(spikes,w,val,maxT)
    lambda = 0.05;
    spikenum = size(spikes,2);
    %�������������Ȩ������w��ʹ����
    if val == 0
        for i = 1 : 1 : spikenum
            if spikes(i)<maxT
                w(i) = w(i) + lambda * k(maxT-spikes(i));
            end
        end
    %��֮�����Сw��ʹ������
    else
        for i = 1 : 1 : spikenum
            if spikes(i)<maxT
                w(i) = w(i) - lambda * k(maxT-spikes(i));
            end
        end
     end
end