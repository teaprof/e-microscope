function IDX = MultiIndexToSingleIndex(MultiIndex, MaxValues)
%
%function IDX = MultiIndexToSingleIndex(MultiIndex, MaxValues)
%���������� ��������� �������� (i1, i2, ..., ik) �� ���� ������
%������������ ��� ����������� ������ parfor-����� ������ ���������
%��������� ������
%MultiIndex - ��������� ���������� � 1, � �� � ����
%MaxValues - ���������� ��������� �� ������ �����������
%
%������� ��������� ���������� � sub2ind, �� ����� ������ � �������������,
%���� ����������� �������� ������ � ������ ���������� ���������.
%
% �����
%   IDX = MultiIndexToSingleIndex(MultiIndex, MaxValues)
% ��������� ������������ ������
%   subs = num2cell(MultiIndex);
%   IDX = sub2ind(MaxValues, subs{:});
% �� �� ���������� ��� ���� cell arrays.
%
%see also: 
%   SingleIndexToMultiIndex
%   sub2ind ind2sub
    IDX = 0;
    M = 1;
    for k = 1 : numel(MultiIndex)
        IDX = IDX + (MultiIndex(k) - 1)*M;
        M = M*MaxValues(k);
    end
    IDX = IDX + 1;
end