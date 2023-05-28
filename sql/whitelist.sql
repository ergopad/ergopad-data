DROP TABLE "whitelist";
-- whitelist
CREATE TABLE "whitelist" (
    id SERIAL PRIMARY KEY,
    "walletId" INTEGER DEFAULT -1,
    "eventId" INTEGER DEFAULT -1,
    "created_dtz" timestamptz NOT NULL DEFAULT now(),
    "allowance_sigusd" NUMERIC(16, 6) DEFAULT 0.0,
    "spent_sigusd" NUMERIC(16, 6) DEFAULT 0.0,
    "isAvailable" SMALLINT DEFAULT 0,
    "lastAssemblerId" TEXT,
    "lastAssemblerStatus" TEXT,
    "isWhitelist" SMALLINT DEFAULT 0
);
