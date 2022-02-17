-- insert into select_frmla
SELECT
	DISTINCT f.frmla_id,
	c.clr_id
FROM
	frmla_ingrd f
INNER JOIN frmla_was b ON
	(f.frmla_id = b.frmla_id)
INNER JOIN clr_frm c ON
	(f.frmla_id = c.frmla_id)
WHERE
	f.ingrd_cd NOT IN ('DX5131', 'DX5147', 'DX5148', 'DX5174', 'DX5216', 'DX5233', 'DX5243', 'DX5262', 'DX5263', 'DX5305')


/*

drop table select_frmla;

create table select_frmla(
 FRMLA_ID BIGINT,
 CLR_ID BIGINT
)

*/