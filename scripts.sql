insert into users (
  id,
  name,
  last_name,
  email,
  password,
  age,
  gender,
  phone,
  is_active,
  course_id
) values (
  '1ede93d5-fcae-446b-9036-54db02561b8c',
  'Roberto',
  'Mattus',
  'roberto@gmail.com',
  'root',
  21,
  'M',
  '+529842051122',
  true,
  '0202d59e-a557-4212-b108-0dd24bb220be'
),(
  'e82cf8cb-3839-4334-89e5-18e3d7bb26fd',
  'Sebastian',
  'Ortiz',
  'sebas@gmail.com',
  'root',
  21,
  'M',
  '+529848376273',
  true,
  'a9a0fad8-1517-4660-bb55-f12904339605'
);

insert into courses (
  id,
  title,
  description,
  teacher,
  level_id 
) values (
  '10d515f8-6897-4646-9bb9-4d00972de27a',
  'ReactJS',
  'Learn front end technologies with react.',
  'Andres',
  1
),(
  '8fa6e1c1-bd62-4fdc-acea-5fd6e7cbb66b',
  'NodeJS',
  'Learn back end technologies with nodejs and postgresql.',
  'Zahid Kick',
  1
);

insert into levels (
  name
) values (
  'Starter'
),(
  'Medium'
),(
  'Advanced'
);

insert into course_videos (
  id,
  title,
  url,
  course_id,
  category_id 
) values (
  'd744c05c-e079-405b-b7bc-926b3696089b',
  'Fundamentos de React',
  'http://funreact.com',
  '10d515f8-6897-4646-9bb9-4d00972de27a',
  1
),(
  'e2f06eeb-0d02-4714-abfb-9c443b42ce83',
  'Fundamentos de Node',
  'http://funnode.com',
  '8fa6e1c1-bd62-4fdc-acea-5fd6e7cbb66b',
  1
);

insert into categories (
  name
) values (
  'Fundamentos'
),(
  'Topicos avanzados'
),(
  'Proyectos finales'
);

 