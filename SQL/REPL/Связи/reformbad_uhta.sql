Spool reformbad_uhta.log

DECLARE
  i NUMBER;
BEGIN
  i:=SNP_REPL.FOR_REPL.EXECREFORMBAD(0);
END;
/

spool off

exit