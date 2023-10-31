-- CreateTable
CREATE TABLE "users" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "tests" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "intro" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "items" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "test_id" INTEGER NOT NULL,
    "category" TEXT NOT NULL,
    "question" TEXT NOT NULL,
    CONSTRAINT "items_test_id_fkey" FOREIGN KEY ("test_id") REFERENCES "tests" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "results" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "user_id" INTEGER NOT NULL,
    "test_id" INTEGER NOT NULL,
    "patient_dni" TEXT NOT NULL,
    "patient_age" INTEGER NOT NULL,
    "tutor_dni" TEXT NOT NULL,
    "date_asigned" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "date_answered" DATETIME NOT NULL,
    "tutor_scolarship" INTEGER NOT NULL,
    "tutor_residence" TEXT NOT NULL,
    CONSTRAINT "results_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "results_test_id_fkey" FOREIGN KEY ("test_id") REFERENCES "tests" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "answers" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "result_id" INTEGER NOT NULL,
    "item_id" INTEGER NOT NULL,
    "value" INTEGER NOT NULL,
    CONSTRAINT "answers_result_id_fkey" FOREIGN KEY ("result_id") REFERENCES "results" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "answers_item_id_fkey" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "answers_item_id_key" ON "answers"("item_id");
