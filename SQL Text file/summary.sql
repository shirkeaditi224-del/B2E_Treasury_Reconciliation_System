SELECT 
    (SELECT SUM(`Transaction Amount`) FROM amex_project.internal_ledger) AS Total_Ledger_Balance,
    (SELECT SUM(`Transaction Amount`) FROM amex_project.bank_statement) AS Total_Bank_Balance,
    ((SELECT SUM(`Transaction Amount`) FROM amex_project.internal_ledger) - 
     (SELECT SUM(`Transaction Amount`) FROM amex_project.bank_statement)) AS Total_Unreconciled_Variance;