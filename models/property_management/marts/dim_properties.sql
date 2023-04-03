select 
    p.id as property_id,
    p.created_at,
    p.name as property_name,
    p.address,
    p.city,
    p.state,
    p.zip_code,
    p.type,
    p.year_built,
    u.rent,
    u.name as unit_name,
    u.id as unit_id
from {{ref('stg_properties')}} as p
left join {{ref('stg_units')}} as u ON p.id = u.property_id
-- order by p.id
