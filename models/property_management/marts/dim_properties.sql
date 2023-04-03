select 
    p.id as property_id,
    p.created_at,
    p.name as property_name,
    p.type,
    p.year_built,
    u.rent,
    u.bedrooms,
    u.bathrooms,
    u.square_feet,
    u.status,
    u.address_1,
    u.address_2,
    u.city,
    u.state,
    u.zip_code,
    u.id as unit_id
from {{ref('stg_properties')}} as p
left join {{ref('stg_units')}} as u ON p.id = u.property_id
