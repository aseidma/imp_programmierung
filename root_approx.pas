program root_approx;
Uses sysutils;

type
    TPair = array[0..1] of Integer;

var
    n: integer;
    basePair: TPair = (1, 1);
    finalPair: TPair;

function ApproxRoot(valPair: TPair; n: integer): TPair;
var
    prevFrist: integer;

begin
    if n=1 then
    begin
        ApproxRoot := valPair;
        exit;
    end;

    prevFrist := valPair[0];
    valPair[0] := valPair[0] + valPair[1];
    valPair[1] := prevFrist + valPair[0];
    ApproxRoot := ApproxRoot(valPair, n - 1);
end;

begin
    writeln('Please enter a value for n');
    readln(n);
    finalPair := ApproxRoot(basePair, n);
    writeln(format('(%d, %d)', [finalPair[0], finalPair[1]]));
end.
