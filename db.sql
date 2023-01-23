CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL DEFAULT 18,
  "gender" char(1) DEFAULT 'M',
  "phone" varchar(17),
  "is_active" bool DEFAULT true,
  "course_id" uuid
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "level_id" int DEFAULT 1
);

CREATE TABLE "levels" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" text NOT NULL,
  "course_id" uuid,
  "category_id" int
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("level_id") REFERENCES "levels" ("id");

CREATE TABLE "courses_users" (
  "courses_id" uuid,
  "users_course_id" uuid,
  PRIMARY KEY ("courses_id", "users_course_id")
);

ALTER TABLE "courses_users" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses_users" ADD FOREIGN KEY ("users_course_id") REFERENCES "users" ("course_id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");
