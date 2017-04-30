SELECT  COUNT (l.InvoiceLineId), i.InvoiceID, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.BillingPostalCode, i.Total
FROM Invoice i, InvoiceLine l
WHERE i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId