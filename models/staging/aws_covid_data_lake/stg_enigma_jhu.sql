with source as (

    select * from {{ source('aws', 'hospital_beds') }}

),

renamed as (

    select
    
        fips,
        admin2 as county,
        province_state,
        country_region,
        last_update,
        latitude,
        longitude,
        confirmed,
        deaths,
        recovered,
        active,
        combined_key

    from source

)

select * from renamed
