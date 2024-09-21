USE LUBGUBAN_DB;

SELECT f.fid, f.fname, fl.sbjcode, fl.sbjtitle, fl.units
FROM faculty f RIGHT OUTER JOIN faculty_load fl ON f.fid = fl.fload
ORDER BY fl.sbjcode;

