/*  Window Clause Query
    compare the average of TOTAL in fire type of Pokemon but different in second type 
*/
SELECT DISTINCT p.Type1, p.Type2,
    min(f."TOTAL") OVER W AS Min_TOTAL,
    max(f."TOTAL") OVER W AS Max_TOTAL,
    avg(f."TOTAL") OVER W AS Average_TOTAL
FROM "PokedexEntry_Dimension" p
JOIN "Fact_Table" f ON p."DexEntryKey" = f."DexEntryKey" 
WHERE p.Type1 = 'fire'
WINDOW W AS (PARTITION BY p.Type2)
