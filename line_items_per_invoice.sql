SELECT i.InvoiceID, COUNT (l.InvoiceLineId)
FROM Invoice i, InvoiceLine l
WHERE i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId