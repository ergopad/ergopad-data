CREATE TABLE announcements (
    id SERIAL PRIMARY KEY,
    "createdTimestamp" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    "shortDescription" TEXT NOT NULL,
    description TEXT,
    "bannerImgUrl" TEXT NOT NULL,
    tag TEXT
);
