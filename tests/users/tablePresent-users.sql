-- A quick test to check that the table is present
select count(*) as row_count
	from {{ ref('users')}}
	where username is not null
	having row_count <= 0