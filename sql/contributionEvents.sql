DROP TABLE "contributionEvents";

-- contributionEvents
CREATE TABLE "contributionEvents" (
    -- identifiers
    id SERIAL PRIMARY KEY,
    "projectName" TEXT NOT NULL,
    "roundName" TEXT NOT NULL,
    -- key to existing events table
    "eventId" INT NOT NULL,
    -- details
    title TEXT NOT NULL,
    subtitle TEXT,
    details TEXT,
    "checkBoxes" JSON DEFAULT '{}',
    -- token details
    "tokenId" TEXT NOT NULL,
    "tokenName" TEXT NOT NULL,
    "tokenDecimals" INT NOT NULL,
    "tokenPrice" NUMERIC(16, 6) NOT NULL,
    "proxyNFTId" TEXT NOT NULL,
    "whitelistTokenId" TEXT NOT NULL,
    -- support for flexibility in future
    "additionalDetails" JSON DEFAULT '{}',
    UNIQUE("projectName", "roundName")
);
