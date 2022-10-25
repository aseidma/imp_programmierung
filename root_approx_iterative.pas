program root_approx_iterative;
Uses sysutils;

type
    TPair = array[0..1] of Integer;

var
    n: integer;
    finalPair: TPair;

function ApproxRoot(n: integer): TPair;
var
    prevFrist: integer;
    currPair: TPair = (1, 1);

begin
    repeat
        if n=1 then
        begin
            ApproxRoot := currPair;
            exit();
        end;
        prevFrist := currPair[0];
        currPair[0] := currPair[0] + currPair[1];
        currPair[1] := prevFrist + currPair[0];
        n:=n-1;
    until False;
end;

begin
    writeln('Please enter a value for n');
    readln(n);
    finalPair := ApproxRoot(n);
    writeln(format('(%d, %d)', [finalPair[0], finalPair[1]]));
end.
