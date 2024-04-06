/*  Iceberg Query
    Query the Top 10 Fire type of Pokemon with Highest ATK in generation-i
*/
SELECT DISTINCT p.Name, f."ATK" FROM "PokedexEntry_Dimension" p
INNER JOIN "Fact_Table" f ON p."DexEntryKey" = f."DexEntryKey" 
JOIN "ContextInfo_Dimension" c
ON f."ContextInfoKey" = c."ContextInfoKey" 
WHERE p.Type1 = 'fire'
AND c.Generation = 'generation-i'
ORDER BY f."ATK" DESC
LIMIT 10;
