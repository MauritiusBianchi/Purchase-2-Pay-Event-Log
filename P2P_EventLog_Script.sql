/*Create Purchase Requisition*/
SELECT 
       CONCAT(MANDT, EBELN, EBELP) as "CASE ID"/*Create Case ID*/
       , CONCAT(MANDT, BANFN, BNFPO) as "EVENT ID" 
       , "Create Purchase Requisition" as "EVENT"
       , BADAT as "START EVENT"
       , BADAT as "END EVENT"
       
       	
FROM eban_purchase_requisition;

/*Step 2*/


/*Step 3*/



/*Step 4*/



/*Receive Goods*/


/*UNION ALL for Event-Log creation*/


