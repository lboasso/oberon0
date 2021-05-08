MODULE Incr;

PROCEDURE Inc(a :INTEGER; VAR x :INTEGER);
BEGIN
  x := a + x
END Inc;

PROCEDURE Go;
VAR i :INTEGER;
BEGIN
  i := 5;
  Inc(1, i);
  WriteInt(i);
  WriteLn
END Go;

BEGIN Go
END Incr.
