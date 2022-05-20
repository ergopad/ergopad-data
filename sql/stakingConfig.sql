CREATE TABLE "stakingConfig" (
    id SERIAL PRIMARY KEY,
    project TEXT NOT NULL UNIQUE,
    title TEXT NOT NULL,
    "tokenId" TEXT NOT NULL,
    "stakingInfo" TEXT,
    terms TEXT,
    "additionalDetails" JSON DEFAULT '{}'
);
