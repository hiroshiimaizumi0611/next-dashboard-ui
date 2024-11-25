/*
  Warnings:

  - You are about to drop the column `usename` on the `Admin` table. All the data in the column will be lost.
  - You are about to drop the column `usename` on the `Parent` table. All the data in the column will be lost.
  - You are about to drop the column `usename` on the `Student` table. All the data in the column will be lost.
  - You are about to drop the column `usename` on the `Teacher` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[username]` on the table `Admin` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[username]` on the table `Parent` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[username]` on the table `Student` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[username]` on the table `Teacher` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `username` to the `Admin` table without a default value. This is not possible if the table is not empty.
  - Added the required column `username` to the `Parent` table without a default value. This is not possible if the table is not empty.
  - Added the required column `username` to the `Student` table without a default value. This is not possible if the table is not empty.
  - Added the required column `username` to the `Teacher` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Admin_usename_key";

-- DropIndex
DROP INDEX "Parent_usename_key";

-- DropIndex
DROP INDEX "Student_usename_key";

-- DropIndex
DROP INDEX "Teacher_usename_key";

-- AlterTable
ALTER TABLE "Admin" DROP COLUMN "usename",
ADD COLUMN     "username" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Parent" DROP COLUMN "usename",
ADD COLUMN     "username" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Student" DROP COLUMN "usename",
ADD COLUMN     "username" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Teacher" DROP COLUMN "usename",
ADD COLUMN     "username" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Admin_username_key" ON "Admin"("username");

-- CreateIndex
CREATE UNIQUE INDEX "Parent_username_key" ON "Parent"("username");

-- CreateIndex
CREATE UNIQUE INDEX "Student_username_key" ON "Student"("username");

-- CreateIndex
CREATE UNIQUE INDEX "Teacher_username_key" ON "Teacher"("username");
