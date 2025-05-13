% MATLAB Script: bitfunctions.m

% Apply format hex command
format hex   % Bring in hex format style

intmax('uint16') % largest unsigned 16-bit number

a = uint16(2^10 - 1) % first data value

b = uint16(567) % second data value

bitand(a,b) % (a & b)

bitor(a,b) % (a | b)

bitcmp(a) % complement a

bitxor(a,b) % xor(a,b)


bitget(b,7) % get 7th bit of b

bitset(b,7) % set 7th bit of b to 1

b, swapbytes(b) % swap byte ordering (little-endian <=> big-endian)

format short g % reset display format