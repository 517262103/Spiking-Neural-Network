function [val,maxT,maxU] = tempotron(spikes,w)
% val �����Ƿ��𣬵��1�������0������ÿ��ʱ�̵�Ĥ��ѹ��������
% maxT ���Ĥ��ѹ���ֵ�ʱ��
% maxI ���Ĥ��ѹ���ֵ��������
    %��ֵ
    thes = 1;
    %rest        
    urest = 0;
    spikenum = size(spikes,2);
    T = [];
    U = [];
    val = 0;
    maxT = 0;
    maxU = 0;
    to = 200;
    for t = 0 : 1 : 200
        u = 0;
        for i = 1 : 1 : spikenum
            %�������Ԫ��������
            if t > spikes(i)  && spikes(i) <= to    
                    u = u + w(i)*k(t-spikes(i));
            end
        end
        u = u + urest;
        if u >= thes
            to = t;
            val = 1;
        end
        if u > maxU
            maxU = u;
            maxT = t;
        end
    end
end