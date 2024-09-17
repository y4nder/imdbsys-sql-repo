USE LUBGUBAN_DB;

SELECT f.fid, f.fname, f.gender, f.rank, fl.sbjcode, fl.sbjtitle, c.colcode, c.colname
FROM faculty f  FULL OUTER JOIN faculty_load fl ON fl.fload = f.fid
				FULL OUTER JOIN college c ON c.colcode = f.colcode
ORDER BY fl.sbjcode;

