USE LUBGUBAN_DB;

SELECT f.fid, f.fname, f.gender, f.rank, fl.sbjcode, fl.sbjtitle, c.colcode, c.colname
FROM faculty f
RIGHT OUTER JOIN faculty_load fl on fl.fload = f.fid
FULL OUTER JOIN college c on c.colcode = f.colcode
ORDER BY fl.sbjcode;

--not sure pa ani tho