/*
  Warnings:

  - Made the column `cursoId` on table `alunos` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "alunos" DROP CONSTRAINT "alunos_cursoId_fkey";

-- AlterTable
ALTER TABLE "alunos" ALTER COLUMN "cursoId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "alunos" ADD CONSTRAINT "alunos_cursoId_fkey" FOREIGN KEY ("cursoId") REFERENCES "cursos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
