-- up
-- report testuale prodotto da un job (es. libcheck), scaricabile dalla pagina Jobs.
-- Va via col job (cancellazione manuale o purge dei 'done' dopo 2 mesi)
ALTER TABLE jobs ADD COLUMN report text;
