PROGRAM MergeSort (INPUT, OUTPUT);
PROCEDURE RecursiveSort(VAR F1: TEXT);
VAR
  F2, F3: TEXT;
  Ch: CHAR;
{PROCEDURE Split(VAR F1, F2, F3: TEXT)
 рабивает F1 на F2 и F3}
{PROCEDURE Merge(VAR F1, F2, F3: TEXT)
 сливает F2 и F3 в F1}
BEGIN {RecursiveSort}
  RESET(F1);
  IF NOT (EOLN(F1))
  THEN
    BEGIN
      IF NOT (EOLN(F1))
      THEN {файл имеет как минимум 2 символа}
        BEGIN
          Split(F1, F2, F3);
          RecursiveSort(F2);
          RecursiveSort(F3);
          Merge(F1, F2, F3);
       END
    END
END;
BEGIN
  RecursiveSort(INPUT)
END.
