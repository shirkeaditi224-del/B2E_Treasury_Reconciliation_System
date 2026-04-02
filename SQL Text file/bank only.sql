SELECT 
    b.`Transaction ID` AS Bank_ID, 
    b.`Transaction Amount` AS Bank_Amount, 
    b.`Entry_date`,
    'Bank-Only Entry (Needs Ledger Update)' AS Exception_Type
FROM amex_project.internal_ledger i
RIGHT JOIN amex_project.bank_statement b 
    ON i.`Transaction ID` = b.`Transaction ID`
WHERE i.`Transaction ID` IS NULL;