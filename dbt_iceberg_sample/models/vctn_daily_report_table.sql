{{ config(
		materialized='table',
		file_format= "iceberg",
		partition_by = ['days(vctn_date)']
	)
}}

with vctn_daily_report as (
select sum(no_vctn_dose) as total_no_dose,state_id,to_timestamp(vctn_date,'yyyy/MM/dd') as vctn_date
from {{ source('test_source', 'vctn_data') }}
group by state_id,vctn_date
),
report_with_state_name as (
select total_no_dose,state_details.state_name,vctn_date from vctn_daily_report
left join {{ source('test_source', 'state_details') }} as state_details using (state_id)
)
select * from report_with_state_name