CREATE TABLE projects_v1 AS
SELECT
    *
FROM
    projects;

DROP TABLE "projectTeams";

DROP TABLE projects;

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    "shortDescription" TEXT NOT NULL,
    description TEXT,
    "fundsRaised" REAL DEFAULT 0,
    "bannerImgUrl" TEXT NOT NULL,
    "isLaunched" BOOLEAN NOT NULL,
    socials JSON DEFAULT '{ }',
    roadmap JSON DEFAULT '{ "roadmap" : [] }',
    team JSON DEFAULT '{ "team" : [] }',
    tokenomics JSON DEFAULT '{ "tokenomics" : [] }'
);

INSERT INTO
    projects (
        name,
        "shortDescription",
        description,
        "fundsRaised",
        "bannerImgUrl",
        "isLaunched",
        socials
    )
SELECT
    name,
    "shortDescription",
    description,
    "fundsRaised",
    "bannerImgUrl",
    "isLaunched",
    CAST(socials AS JSON)
FROM
    projects_v1;

ALTER TABLE projects ADD COLUMN "isDraft" BOOLEAN DEFAULT false;
