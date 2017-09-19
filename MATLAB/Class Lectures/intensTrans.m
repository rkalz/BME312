function out = intensTrans(in,trans)

if ~isa(in,'uint8')
    error('in should be uint8')
end

if ~isa(trans,'uint8')
    error('in should be uint8')
end

if length(trans)~=256
    error('trans must have length 256')
end

out = in;

for i = 1:length((in:))
    out(i) = trans(in(i)+1);
end

end
