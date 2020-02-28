PROGRAM HelloDear(INPUT, OUTPUT);
VAR
  Name: STRING;
USES
  GPC;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Name := GetEnv('QUERY_STRING');
  DELETE(Name, 1, 5);
  IF Name <> ''
  THEN
    WRITELN('Hello dear ', Name)
  ELSE
    WRITELN('Hello Anonimus');
END.         
