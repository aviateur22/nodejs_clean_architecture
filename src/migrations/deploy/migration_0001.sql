-- Deploy migration_0001:migration_0001 to pg

BEGIN;
  CREATE TABLE "todo"(
      "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
      "title" TEXT,
      "description" TEXT,
      "status" BOOLEAN NOT NULL DEFAULT false,
      "createdAt" TIMESTAMPTZ NOT NULL DEFAULT now(),    
      "updatedAt" TIMESTAMPTZ NOT NULL DEFAULT now()
  );
COMMIT;