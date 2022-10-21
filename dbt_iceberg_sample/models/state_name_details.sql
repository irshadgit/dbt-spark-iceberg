with state_details_new as (
select * from
{{ source('test_source', 'state_dist_details') }}
),
state_name_new as (
select * from {{ source('test_source', 'state_details') }}
)
select * from state_details_new
left join state_name_new using (state_id)