-- For correcting table view in correct format, i.e without tab down to next line

set lines 256;
set wrap off;

-- If ↑ doesn't work, use this ↓

set lines 256;
set trimout off;
set tab on;

-- ---------------------------------------------------------------------------------------------------- --

/*
To print date in full format (DD-MM-YYYY, 06-MAR-2002)
   You can change DD-MM-YYYY to any other format
       Enter dates as you set in the format, i.e  06-MAR-2002 for DD-MM-YYYY, MAR-06-2002 for MM-DD-YYYY
*/

ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';