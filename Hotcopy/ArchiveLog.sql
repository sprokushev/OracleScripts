WHENEVER SQLERROR CONTINUE

SPOOL SwitchLog.log 
Connect / as sysdba
ALTER SYSTEM ARCHIVE LOG ALL;
exit