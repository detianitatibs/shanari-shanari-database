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

CREATE TABLE pokemon_moves (
    pokemon_id integer,
    move_name text,
    move_learn_method text,
    level_learned_at integer,
    version_group text,
    PRIMARY KEY (pokemon_id, move_name, move_learn_method, version_group)
);

CREATE TABLE pokemon_sprites (
    pokemon_id integer,
    front_default_url text,
    front_female_url text,
    front_shiny_url text,
    front_shiny_female_url text,
    back_default_url text,
    back_female_url text,
    back_shiny_url text,
    back_shiny_female_url text,
    PRIMARY KEY (pokemon_id)
);

CREATE TABLE ability (
    ability_id integer,
    ability_name_en text,
    ability_name_jp text,
    PRIMARY KEY (ability_id)
);

CREATE TABLE nature (
    nature_id integer,
    nature_name_en text,
    nature_name_jp text,
    increased_stat text,
    decreased_stat text,
    PRIMARY KEY (nature_id)
);

CREATE TABLE pokemon_form (
    form_id integer,
    form_name_en text,
    form_name_jp text,
    PRIMARY KEY (form_id)
);

CREATE TABLE moves (
    move_id integer,
    move_name_en text,
    move_name_jp text,
    type text,
    power integer,
    pp integer,
    priority integer,
    accuracy integer,
    damage_class text,
    effect_chance integer,
    effect_entries text,
    ailment text,
    move_category text,
    crit_rate integer,
    drain integer,
    flinch_chance integer,
    max_hits integer,
    min_hits integer,
    max_turns integer,
    min_turns integer,
    stat_chance integer,
    target text,
    PRIMARY KEY (move_id)
);

CREATE TABLE move_stat_change (
    move_id integer,
    stat_change_num integer,
    stat_change_name text,
    PRIMARY KEY (move_id)
);
