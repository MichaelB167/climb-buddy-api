SELECT       `hold_type_of_fall`
    FROM     `climbs`
    GROUP BY `hold_type_of_fall`
    ORDER BY COUNT(*) DESC
