set echo off                                                                                                                                                                                            
set feedback off                                                                                                                                                                                        
set pages 0                                                                                                                                                                                             
set lines 200                                                                                                                                                                                           
set verify off                                                                                                                                                                                          
set termout off                                                                                                                                                                                         
Spool uhta3.log                                                                                                                                                                                         
BEGIN                                                                                                                                                                                                   
NULL;                                                                                                                                                                                                   
 PARUS.PR_REPLICATE_CHANGE_RN('DOCINPT',605489606,900002749887,1);                                                                                                                                      
END;                                                                                                                                                                                                    
/                                                                                                                                                                                                       
spool off                                                                                                                                                                                               
exit                                                                                                                                                                                                    
