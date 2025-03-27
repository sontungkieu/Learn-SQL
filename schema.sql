CREATE TABLE "cards" (
    "id" INTEGER,
    PRIMARY KEY ("id") --implicit not null and unique
);

CREATE TABLE "stations" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "line" TEXT NOT NULL,
    PRIMARY KEY ("id") --Table constraints
);

CREATE TABLE "swipes" (
    "id" INTEGER,
    "card_id" INTEGER,
    "station_id" INTEGER,
    "type" TEXT NOT NULL CHECK ("type" IN ('enter', 'exit', 'deposit')),
    "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "amount" NUMERIC NOT NULL CHECK("amount"!=0),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("card_id") REFERENCES "cards"("id") ON DELETE RESTRICT, --Table constraints
    FOREIGN KEY ("station_id") REFERENCES "stations"("id") ON DELETE NO ACTION --SET NULL, SET DEFAULT, CASCADE (delete all things linked)
);
-- ALTER TABLE 
-- ... RENAME TO ... 
-- ADD COLUMN ...
-- RENAME COLUMN ... TO ...
-- DROP COLUMN ...
--YYYY-MM-DD