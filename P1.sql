-- answering question 1, 75 rows in the query result
SELECT vendor_id, vendor_name, vendor_address1, vendor_city, vendor_state, vendor_zip_code
FROM vendors
WHERE vendor_state='CA'
ORDER BY vendor_id ;

--answering question 2, 23 rows in the query result
SELECT vendors.vendor_id, vendor_name, payment_date
FROM vendors INNER JOIN invoices ON vendors.vendor_id = invoices.vendor_id
WHERE payment_date BETWEEN '01-JUN-2014' AND '30-JUN-2014'
ORDER BY  payment_date, vendor_name ;

--answering question 3, 25 rows in the query result
SELECT vendor_id, vendor_name, vendor_address1, vendor_address2
FROM vendors
WHERE vendor_phone = 'NULL'
ORDER BY vendor_id  ;

--answering question 4, 50 rows in the query result
SELECT vendor_id, vendor_name, vendor_address1, vendor_address2
FROM vendors
WHERE vendor_address1 LIKE '%P%O%Box%' OR vendor_address2 LIKE '%P%O%Box%'
ORDER BY vendor_id  ;

--answering question 5, 27 rows in the query result
SELECT  invoice_number, invoice_date, invoice_total, vendors.vendor_id, vendor_name
FROM invoices INNER JOIN vendors on vendors.vendor_id = invoices.vendor_id
WHERE invoice_total > 1000
ORDER BY invoice_total DESC ;

--answering question 6, 41 rows in the query result
    SELECT invoice_number, invoice_total, invoice_due_date, payment_date, 'NO PAYMENT' AS payment_status 
    FROM invoices
    WHERE payment_total = 0 
UNION
    SELECT invoice_number, invoice_total, invoice_due_date, payment_date, 'LATE PAYMENT' AS payment_status 
    FROM invoices
    WHERE invoice_due_date < payment_date
ORDER BY payment_status, invoice_due_date ;

--answering question 7, 5 rows in the query result
SELECT first_name || ' ' || last_name, department_name
FROM employees e 
    JOIN projects p ON e.employee_id = p.employee_id
    JOIN departments d ON e.department_number = d.department_number
ORDER BY department_name, last_name ;



    
