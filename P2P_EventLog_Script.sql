/*Create Purchase Requisition*/
SELECT 
       CONCAT(MANDT, EBELN, EBELP) as "CASE ID"/*Create Case ID*/
       , CONCAT(MANDT, BANFN, BNFPO) as "EVENT ID" 
       , "Create Purchase Requisition" as "EVENT"
       , FROM_UNIXTIME(UNIX_TIMESTAMP (BADAT), "%d-%m-%Y") as "START EVENT"
       , FROM_UNIXTIME(UNIX_TIMESTAMP (BADAT), "%d-%m-%Y") as "END EVENT"
    
FROM eban_purchase_requisition;

/*Purchase Order*/
