function w = train(spikes,w,label)
% ѵ������
% w����ʼȨ�أ���Ҫͨ��ѵ������Ȩ��
% label,����������ǩ��0��1����
    %����Ĥ��ѹ�������Ƿ�������Ĥ��ѹ���ֵ�ʱ��
    [val,maxT,maxU] = tempotron(spikes,w);
    %��������������Ȩ�أ���������ǩ��ƥ�䣬һֱѵ����ֱ���������Ҫ��
    while val ~= label;  %����ͱ�ǩ��һ�£�����Ȩֵ
        %w = adjust(spikes,w,val,maxT);  %����Ȩ��
        w = adjust_new(spikes,w,val,maxT,maxU);  %����Ȩ��
        [val,maxT,maxU] = tempotron(spikes,w);%����Ĥ��ѹ�������Ƿ�������Ĥ��ѹ���ֵ�ʱ��
    end
end


