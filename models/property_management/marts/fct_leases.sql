select
    l.ID as lease_id,
    l.created_at, 
    l.unit_id, 
    l.start_date,
    l.end_date,
    l.rental_application_id,
    l.completed, 
    u.rent,
    u.name,
    u.bedrooms,
    u.bathrooms,
    u.square_feet,
    u.status,
    u.address_1,
    u.address_2,
    u.city,
    u.state,
    u.zip_code,
    r.created_at as rental_application_created_at,
    r.deleted_at,
    r.status as rental_status,
    r.contact_info_id
from {{ref('stg_leases')}} as l
left join {{ref('stg_units')}} as u ON l.unit_id = u.id
left join {{ref('stg_rental_applications')}} as r ON l.rental_application_id = r.ID