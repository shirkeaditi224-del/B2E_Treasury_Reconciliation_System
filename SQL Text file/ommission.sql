SELECT i.*, 'Omission' AS Error_Type
FROM amex_project.internal_ledger i
LEFT JOIN amex_project.bank_statement b 
  ON i.`Transaction ID` = b.`Transaction ID`
WHERE b.`Transaction ID` IS NULL;