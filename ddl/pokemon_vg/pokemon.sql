CREATE TABLE pokemon (
    pokemon_id integer,
    pokemon_name_en text,
    pokemon_name_jp text,
    height numeric,
    weight numeric,
    type_1 text,
    type_2 text,
    stat_hp integer,
    stat_attack integer,
    stat_defense integer,
    stat_special_attack integer,
    stat_special_defense integer,
    stat_speed integer,
    PRIMARY KEY (pokemon_id)
);