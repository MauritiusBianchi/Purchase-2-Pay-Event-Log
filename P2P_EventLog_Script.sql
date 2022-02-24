/*----------------Event 1: Create Purchase Requisition Item------------------------------*/
SELECT 
       CONCAT(MANDT, EBELN, EBELP) as "CASE ID"/*Create Case ID*/
       , CONCAT(MANDT, BANFN, BNFPO) as "EVENT ID" 
       , "Create Purchase Requisition Item" as "EVENT"
       , FROM_UNIXTIME(UNIX_TIMESTAMP (BADAT), "%d-%m-%Y") as "START EVENT"
       , FROM_UNIXTIME(UNIX_TIMESTAMP (BADAT), "%d-%m-%Y") as "END EVENT"
 
FROM eban_purchase_requisition
UNION
/*----------------Event 2: Change Vendor------------------------------------------*/

/*----------------Event 3: Receive Order Confirmation from Vendor-----------------*/
/*----------------Event 3: Purchase Order-------------------------------------------------*/


/*----------------Event 4: Goods receipt------------------------------------------*/
SELECT 
		CONCAT(MANDT, EBELN, EBELP) as "CASE ID"
        ,CONCAT(MANDT, EBELN, EBELP, ZEKKN, VGABE, GJAHR, BELNR, BUZEI) as "EVENT ID"
        ,"Goods receipt" as "EVENT"
        , FROM_UNIXTIME(UNIX_TIMESTAMP (CPUDT), "%d-%m-%Y") as "START EVENT"
        , FROM_UNIXTIME(UNIX_TIMESTAMP (CPUDT), "%d-%m-%Y") as "END EVENT"
FROM ekbe_history_per_purchasing_document
WHERE BEWTP = "E" AND SHKZG = "S"
UNION
/*----------------Event 5: Cancel Receive of Goods------------------------------------------*/
SELECT 
		CONCAT(MANDT, EBELN, EBELP) as "CASE ID"
        ,CONCAT(MANDT, EBELN, EBELP, ZEKKN, VGABE, GJAHR, BELNR, BUZEI) as "EVENT ID"
        ,"Cancel Goods Receipt" as "EVENT"
        , FROM_UNIXTIME(UNIX_TIMESTAMP (CPUDT), "%d-%m-%Y") as "START EVENT"
        , FROM_UNIXTIME(UNIX_TIMESTAMP (CPUDT), "%d-%m-%Y") as "END EVENT"
FROM ekbe_history_per_purchasing_document
WHERE BEWTP = "E" AND SHKZG = "H";

/*----------------Event 5: Purchase Order------------------------------------------*/

