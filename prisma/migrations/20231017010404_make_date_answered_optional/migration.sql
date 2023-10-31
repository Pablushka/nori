-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_results" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "user_id" INTEGER NOT NULL,
    "test_id" INTEGER NOT NULL,
    "patient_dni" TEXT NOT NULL,
    "patient_age" INTEGER NOT NULL,
    "tutor_dni" TEXT NOT NULL,
    "date_asigned" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "date_answered" DATETIME,
    "tutor_scolarship" INTEGER NOT NULL,
    "tutor_residence" TEXT NOT NULL,
    CONSTRAINT "results_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "results_test_id_fkey" FOREIGN KEY ("test_id") REFERENCES "tests" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_results" ("date_answered", "date_asigned", "id", "patient_age", "patient_dni", "test_id", "tutor_dni", "tutor_residence", "tutor_scolarship", "user_id") SELECT "date_answered", "date_asigned", "id", "patient_age", "patient_dni", "test_id", "tutor_dni", "tutor_residence", "tutor_scolarship", "user_id" FROM "results";
DROP TABLE "results";
ALTER TABLE "new_results" RENAME TO "results";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
