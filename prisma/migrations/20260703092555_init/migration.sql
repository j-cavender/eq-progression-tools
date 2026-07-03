-- CreateEnum
CREATE TYPE "ProgressStatus" AS ENUM ('missing', 'obtained');

-- CreateTable
CREATE TABLE "CollectionSet" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "CollectionSet_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CollectionGroup" (
    "id" SERIAL NOT NULL,
    "collectionSetId" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "sortOrder" INTEGER NOT NULL,
    "resultItemId" INTEGER,

    CONSTRAINT "CollectionGroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CollectionGroupItem" (
    "id" SERIAL NOT NULL,
    "collectionGroupId" INTEGER NOT NULL,
    "itemId" INTEGER NOT NULL,
    "sortOrder" INTEGER NOT NULL,

    CONSTRAINT "CollectionGroupItem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Item" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "gameItemId" INTEGER,

    CONSTRAINT "Item_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Character" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Character_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CharacterItemProgress" (
    "id" SERIAL NOT NULL,
    "itemId" INTEGER NOT NULL,
    "characterId" INTEGER NOT NULL,
    "status" "ProgressStatus" NOT NULL DEFAULT 'missing',
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "CharacterItemProgress_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "CollectionSet_name_key" ON "CollectionSet"("name");

-- CreateIndex
CREATE UNIQUE INDEX "CollectionGroup_collectionSetId_name_key" ON "CollectionGroup"("collectionSetId", "name");

-- CreateIndex
CREATE UNIQUE INDEX "CollectionGroup_collectionSetId_sortOrder_key" ON "CollectionGroup"("collectionSetId", "sortOrder");

-- CreateIndex
CREATE UNIQUE INDEX "CollectionGroupItem_collectionGroupId_itemId_key" ON "CollectionGroupItem"("collectionGroupId", "itemId");

-- CreateIndex
CREATE UNIQUE INDEX "CollectionGroupItem_collectionGroupId_sortOrder_key" ON "CollectionGroupItem"("collectionGroupId", "sortOrder");

-- CreateIndex
CREATE UNIQUE INDEX "Item_gameItemId_key" ON "Item"("gameItemId");

-- CreateIndex
CREATE UNIQUE INDEX "Character_name_key" ON "Character"("name");

-- CreateIndex
CREATE UNIQUE INDEX "CharacterItemProgress_characterId_itemId_key" ON "CharacterItemProgress"("characterId", "itemId");

-- AddForeignKey
ALTER TABLE "CollectionGroup" ADD CONSTRAINT "CollectionGroup_collectionSetId_fkey" FOREIGN KEY ("collectionSetId") REFERENCES "CollectionSet"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CollectionGroup" ADD CONSTRAINT "CollectionGroup_resultItemId_fkey" FOREIGN KEY ("resultItemId") REFERENCES "Item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CollectionGroupItem" ADD CONSTRAINT "CollectionGroupItem_collectionGroupId_fkey" FOREIGN KEY ("collectionGroupId") REFERENCES "CollectionGroup"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CollectionGroupItem" ADD CONSTRAINT "CollectionGroupItem_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Item"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CharacterItemProgress" ADD CONSTRAINT "CharacterItemProgress_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Item"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CharacterItemProgress" ADD CONSTRAINT "CharacterItemProgress_characterId_fkey" FOREIGN KEY ("characterId") REFERENCES "Character"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
