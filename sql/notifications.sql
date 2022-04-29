-- table notifications
CREATE TABLE notifications (
    id SERIAL PRIMARY KEY,
    "walletAddress" TEXT NOT NULL,
    "createdTimestamp" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    "transactionId" TEXT,
    "transactionStatus" TEXT,
    context TEXT,
    "additionalText" TEXT
);

-- efficient search by walletAddress
CREATE INDEX ON notifications ("walletAddress");
