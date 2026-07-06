create table users (
  id serial primary key,
  telegram_id bigint unique not null,
  username text,
  active_subject text default 'physics',
  physics_index int default 0,
  python_index int default 0,
  lesson_count int default 0,
  created_at timestamp default now()
);

create table sessions (
  id serial primary key,
  telegram_id bigint,
  subject text,
  topic text,
  kind text,
  created_at timestamp default now()
);
