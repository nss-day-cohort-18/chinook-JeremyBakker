SELECT aggregateData.Country, MAX(aggregateData.sumTotal)
FROM (SELECT i.BillingCountry as Country, SUM(i.Total) as sumTotal
FROM Invoice i
GROUP BY i.BillingCountry) as aggregateData