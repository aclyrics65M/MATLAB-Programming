function out = myfunction(select)
% MYFUNCTION Return function handle to a subfunction.
% Example function demonstrating function handles to subfunctions.

switch select
    case 'case1'
        out = @local_subfun1;
    case 'case2'
        out = @local_subfun2;
    otherwise
        out = [];
        error('Unknown Input.')
end

function a = local_subfun1(b,c)
% LOCAL_SUBFUN Some function operation.

% code that operates on the input arguments b and c
% and returns content in the variable a

% end of local_subfun1

function d = local_subfun2(e,f)
% LOCAL_SUBFUN Some function operation.

% code that operates on the input arguments e and f
% and returns content in the variable d

% end of local subfun2