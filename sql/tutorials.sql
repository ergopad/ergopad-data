-- tutorials
CREATE TABLE tutorials (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    "shortDescription" TEXT,
    description TEXT,
    link TEXT,
    "linkType" TEXT,
    "bannerImgUrl" TEXT,
    category TEXT,
    config JSON DEFAULT '{}'
);
