/*
  Warnings:

  - Added the required column `order` to the `items` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_items" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "order" INTEGER NOT NULL,
    "test_id" INTEGER NOT NULL,
    "category" TEXT NOT NULL,
    "question" TEXT NOT NULL,
    CONSTRAINT "items_test_id_fkey" FOREIGN KEY ("test_id") REFERENCES "tests" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_items" ("category", "id", "question", "test_id") SELECT "category", "id", "question", "test_id" FROM "items";
DROP TABLE "items";
ALTER TABLE "new_items" RENAME TO "items";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
