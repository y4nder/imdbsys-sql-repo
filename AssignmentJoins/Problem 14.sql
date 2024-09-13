USE LUBGUBAN_DB;

SELECT f.fid, f.fname, f.rank, fl.sbjcode, fl.sbjtitle
FROM faculty f
LEFT OUTER JOIN faculty_load fl on fl.fload = f.fid
WHERE f.fid < 210 AND f.rank != 'DEAN'
ORDER BY f.fid;