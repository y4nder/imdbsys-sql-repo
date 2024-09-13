USE LUBGUBAN_DB;

SELECT f.fid, f.fname, f.rank, c.colcode, c.colname
FROM faculty f
FULL OUTER JOIN college c on c.colcode = f.colcode
ORDER BY c.colcode;