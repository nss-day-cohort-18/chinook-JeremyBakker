SELECT Count (i.InvoiceId) "Number of Invoices", i.BillingCountry "Billing Country"
FROM Invoice i
GROUP BY i.BillingCountry