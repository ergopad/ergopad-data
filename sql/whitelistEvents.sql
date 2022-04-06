drop table "whitelistEvents";

create table "whitelistEvents" (
    id SERIAL PRIMARY KEY,
    "projectName" TEXT NOT NULL,
    "roundName" TEXT NOT NULL,
    "eventId" INTEGER NOT NULL,
    title TEXT NOT NULL,
    subtitle TEXT,
    details TEXT,
    "checkBoxes" JSON,
    "additionalDetails" JSON,
    UNIQUE("projectName", "roundName")
);
