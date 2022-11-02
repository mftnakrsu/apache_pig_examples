Data = LOAD '/operatorexam/*' USING PigStorage(',') AS
(
userId : int,
country : chararray,
duration : int,
search : chararray
);
New_Data = FILTER Data BY(country=='TR') AND (duration>3000);
DUMP New_Data;