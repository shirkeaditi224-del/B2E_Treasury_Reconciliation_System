SELECT 
    i.`Transaction ID`, 
    i.`Transaction Amount` AS Ledger_Amt, 
    b.`Transaction Amount` AS Bank_Amt,
    (i.`Transaction Amount` - b.`Transaction Amount`) AS Variance
FROM amex_project.internal_ledger i
INNER JOIN amex_project.bank_statement b 
  ON i.`Transaction ID` = b.`Transaction ID`
WHERE i.`Transaction Amount` <> b.`Transaction Amount`;