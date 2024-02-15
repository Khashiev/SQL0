SELECT
    (
        SELECT p.name FROM person AS p WHERE p.id = po.person_id
    ) AS name,
    CASE
        WHEN
        (
            SELECT p.name FROM person AS p WHERE p.id = po.person_id
        ) = 'Denis' THEN
            TRUE
        ELSE
            FALSE
    END AS check_name
FROM person_order AS po
WHERE (po.order_date = '2022-01-07')
      AND (
              po.menu_id = 13
              OR po.menu_id = 14
              OR po.menu_id = 18
          );