SELECT l.InvoiceId, l.invoiceLineId, t.Name
FROM Track t, InvoiceLine l
WHERE t.TrackId = l.TrackId