with source as (

    select * from {{ source('snowflake', 'owid_vaccinations') }}

),

renamed as (

    select
    
        date,
        country_region,
        iso3166_1,
        total_vaccinations,
        people_vaccinated,
        people_fully_vaccinated,
        daily_vaccinations_raw,
        daily_vaccinations,
        total_vaccinations_per_hundred,
        people_vaccinated_per_hundred,
        daily_vaccinations_per_million,
        vaccines,
        last_observation_date,
        source_name,
        source_website,
        cast(last_update_date as timestamp(3)) as last_update_date,
        last_reported_flag

    from source

)

select * from renamed
