Data = LOAD '/operatorexam/*' USING PigStorage(',') AS
(
userId : int,
country : chararray,
duration : int,
search : chararray
);
New_Data = FILTER Data BY(search matches '.*Koltuk.*');
DUMP New_Data;