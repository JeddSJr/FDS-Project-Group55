/*  Window Query
    Query the Average of DEF in each type of Pokemon and provide a rank 
*/
SELECT p.Type1, avg(f."DEF") AS Average_DEF,
RANK() OVER (ORDER BY avg(f."DEF") DESC) AS Rank
FROM "PokedexEntry_Dimension" p
JOIN "Fact_Table" f ON p."DexEntryKey" = f."DexEntryKey" 
Group By p.Type1;
