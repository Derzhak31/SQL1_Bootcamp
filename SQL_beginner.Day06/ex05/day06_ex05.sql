COMMENT ON TABLE PERSON_DISCOUNTS IS 'Таблица скидок для клиентов';
COMMENT ON COLUMN PERSON_DISCOUNTS.ID IS 'Уникальный идентификатор (первичный ключ) таблицы скидок';
COMMENT ON COLUMN PERSON_DISCOUNTS.PERSON_ID IS 'Уникальный идентификатор (внешний ключ) посетителей';
COMMENT ON COLUMN PERSON_DISCOUNTS.PIZZERIA_ID IS 'Уникальный идентификатор (внешний ключ) пиццерий';
COMMENT ON COLUMN PERSON_DISCOUNTS.DISCOUNT IS 'Размер скидки';