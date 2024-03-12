-- CreateTable
CREATE TABLE "cidades" (
    "id" TEXT NOT NULL,
    "nomeCidade" TEXT NOT NULL,

    CONSTRAINT "cidades_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "alunos" (
    "id" TEXT NOT NULL,
    "matricula" INTEGER NOT NULL,
    "nomeAluno" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "rg" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "nascimento" TIMESTAMP(3) NOT NULL,
    "cidadeId" TEXT NOT NULL,
    "cursoId" TEXT,

    CONSTRAINT "alunos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cursos" (
    "id" TEXT NOT NULL,
    "nomeCurso" TEXT NOT NULL,
    "periodo" TEXT NOT NULL,
    "horarioId" TEXT NOT NULL,

    CONSTRAINT "cursos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "horarios" (
    "id" TEXT NOT NULL,
    "horaInicio" TEXT NOT NULL,
    "horaTermino" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,

    CONSTRAINT "horarios_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "alunos" ADD CONSTRAINT "alunos_cidadeId_fkey" FOREIGN KEY ("cidadeId") REFERENCES "cidades"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "alunos" ADD CONSTRAINT "alunos_cursoId_fkey" FOREIGN KEY ("cursoId") REFERENCES "cursos"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "cursos" ADD CONSTRAINT "cursos_horarioId_fkey" FOREIGN KEY ("horarioId") REFERENCES "horarios"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
