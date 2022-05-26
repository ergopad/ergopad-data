CREATE TABLE "stakingConfig" (
    id SERIAL PRIMARY KEY,
    project TEXT NOT NULL UNIQUE,
    title TEXT NOT NULL,
    "tokenId" TEXT NOT NULL,
    "tokenDecimals" INT DEFAULT 0,
    "stakingInfo" TEXT,
    terms TEXT,
    "additionalDetails" JSON DEFAULT '{}'
);
