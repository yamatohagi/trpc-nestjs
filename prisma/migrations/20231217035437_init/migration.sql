/*
  Warnings:

  - You are about to drop the `Account` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `AfterClimbMeal` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `AfterClimbSpa` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Area` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `BusinessPeriod` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `EmailVerificationToken` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Hashtag` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Mention` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Mountain` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MountainFeature` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MountainFeatureRatingHistory` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MountainToMtFacility` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MountainToPhoto` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MountainToTrailhead` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MountainUrlMemo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MtFacility` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MtFacilityToMtFacilityType` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MtFacilityToPayMethod` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MtFacilityToPhoto` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MtFacilityToRsvMethod` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MtFacilityType` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Notice` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Parking` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PayMethod` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Photo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PostBookmark` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PostLike` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PostToHashtag` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `RatingHistory` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `RouteResult` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `RsvMethod` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Session` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Trailhead` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TrailheadRating` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TrailheadRatingHistory` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TrailheadRoute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TrailheadRouteGroup` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TrailheadToMtFacility` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TrailheadToPhoto` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserFollow` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserInfo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `VerificationToken` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_MtFacilityToMtFacilityType` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Account" DROP CONSTRAINT "Account_userId_fkey";

-- DropForeignKey
ALTER TABLE "AfterClimbMeal" DROP CONSTRAINT "AfterClimbMeal_areaId_fkey";

-- DropForeignKey
ALTER TABLE "AfterClimbMeal" DROP CONSTRAINT "AfterClimbMeal_mtId_fkey";

-- DropForeignKey
ALTER TABLE "AfterClimbMeal" DROP CONSTRAINT "AfterClimbMeal_trailheadId_fkey";

-- DropForeignKey
ALTER TABLE "AfterClimbSpa" DROP CONSTRAINT "AfterClimbSpa_areaId_fkey";

-- DropForeignKey
ALTER TABLE "AfterClimbSpa" DROP CONSTRAINT "AfterClimbSpa_mtId_fkey";

-- DropForeignKey
ALTER TABLE "AfterClimbSpa" DROP CONSTRAINT "AfterClimbSpa_trailheadId_fkey";

-- DropForeignKey
ALTER TABLE "BusinessPeriod" DROP CONSTRAINT "BusinessPeriod_mtFacilityId_fkey";

-- DropForeignKey
ALTER TABLE "EmailVerificationToken" DROP CONSTRAINT "EmailVerificationToken_userId_fkey";

-- DropForeignKey
ALTER TABLE "Mention" DROP CONSTRAINT "Mention_mentionedUserId_fkey";

-- DropForeignKey
ALTER TABLE "Mention" DROP CONSTRAINT "Mention_postId_fkey";

-- DropForeignKey
ALTER TABLE "Mountain" DROP CONSTRAINT "Mountain_areaId_fkey";

-- DropForeignKey
ALTER TABLE "MountainFeature" DROP CONSTRAINT "MountainFeature_mountainId_fkey";

-- DropForeignKey
ALTER TABLE "MountainToMtFacility" DROP CONSTRAINT "MountainToMtFacility_mountainId_fkey";

-- DropForeignKey
ALTER TABLE "MountainToMtFacility" DROP CONSTRAINT "MountainToMtFacility_mtFacilityId_fkey";

-- DropForeignKey
ALTER TABLE "MountainToPhoto" DROP CONSTRAINT "MountainToPhoto_mountainId_fkey";

-- DropForeignKey
ALTER TABLE "MountainToPhoto" DROP CONSTRAINT "MountainToPhoto_photoId_fkey";

-- DropForeignKey
ALTER TABLE "MountainToTrailhead" DROP CONSTRAINT "MountainToTrailhead_mountainId_fkey";

-- DropForeignKey
ALTER TABLE "MountainToTrailhead" DROP CONSTRAINT "MountainToTrailhead_trailheadId_fkey";

-- DropForeignKey
ALTER TABLE "MountainUrlMemo" DROP CONSTRAINT "MountainUrlMemo_mountainId_fkey";

-- DropForeignKey
ALTER TABLE "MtFacility" DROP CONSTRAINT "MtFacility_areaId_fkey";

-- DropForeignKey
ALTER TABLE "MtFacilityToMtFacilityType" DROP CONSTRAINT "MtFacilityToMtFacilityType_mtFacilityId_fkey";

-- DropForeignKey
ALTER TABLE "MtFacilityToMtFacilityType" DROP CONSTRAINT "MtFacilityToMtFacilityType_mtFacilityTypeId_fkey";

-- DropForeignKey
ALTER TABLE "MtFacilityToPayMethod" DROP CONSTRAINT "MtFacilityToPayMethod_mtFacilityId_fkey";

-- DropForeignKey
ALTER TABLE "MtFacilityToPayMethod" DROP CONSTRAINT "MtFacilityToPayMethod_payMethodId_fkey";

-- DropForeignKey
ALTER TABLE "MtFacilityToPhoto" DROP CONSTRAINT "MtFacilityToPhoto_mtFacilityId_fkey";

-- DropForeignKey
ALTER TABLE "MtFacilityToPhoto" DROP CONSTRAINT "MtFacilityToPhoto_photoId_fkey";

-- DropForeignKey
ALTER TABLE "MtFacilityToRsvMethod" DROP CONSTRAINT "MtFacilityToRsvMethod_mtFacilityId_fkey";

-- DropForeignKey
ALTER TABLE "MtFacilityToRsvMethod" DROP CONSTRAINT "MtFacilityToRsvMethod_rsvMethodId_fkey";

-- DropForeignKey
ALTER TABLE "Notice" DROP CONSTRAINT "Notice_fromUserId_fkey";

-- DropForeignKey
ALTER TABLE "Notice" DROP CONSTRAINT "Notice_postId_fkey";

-- DropForeignKey
ALTER TABLE "Notice" DROP CONSTRAINT "Notice_toUserId_fkey";

-- DropForeignKey
ALTER TABLE "Parking" DROP CONSTRAINT "Parking_trailheadId_fkey";

-- DropForeignKey
ALTER TABLE "Photo" DROP CONSTRAINT "Photo_postId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_mtFacilityId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_mtId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_mtTrailheadId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_parentId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_userId_fkey";

-- DropForeignKey
ALTER TABLE "PostBookmark" DROP CONSTRAINT "PostBookmark_postId_fkey";

-- DropForeignKey
ALTER TABLE "PostBookmark" DROP CONSTRAINT "PostBookmark_userId_fkey";

-- DropForeignKey
ALTER TABLE "PostLike" DROP CONSTRAINT "PostLike_postId_fkey";

-- DropForeignKey
ALTER TABLE "PostLike" DROP CONSTRAINT "PostLike_userId_fkey";

-- DropForeignKey
ALTER TABLE "PostToHashtag" DROP CONSTRAINT "PostToHashtag_hashtagId_fkey";

-- DropForeignKey
ALTER TABLE "PostToHashtag" DROP CONSTRAINT "PostToHashtag_postId_fkey";

-- DropForeignKey
ALTER TABLE "Session" DROP CONSTRAINT "Session_userId_fkey";

-- DropForeignKey
ALTER TABLE "Trailhead" DROP CONSTRAINT "Trailhead_areaId_fkey";

-- DropForeignKey
ALTER TABLE "TrailheadRating" DROP CONSTRAINT "TrailheadRating_trailheadId_fkey";

-- DropForeignKey
ALTER TABLE "TrailheadRoute" DROP CONSTRAINT "TrailheadRoute_routeGroupId_fkey";

-- DropForeignKey
ALTER TABLE "TrailheadRouteGroup" DROP CONSTRAINT "TrailheadRouteGroup_trailheadId_fkey";

-- DropForeignKey
ALTER TABLE "TrailheadToMtFacility" DROP CONSTRAINT "TrailheadToMtFacility_mtFacilityId_fkey";

-- DropForeignKey
ALTER TABLE "TrailheadToMtFacility" DROP CONSTRAINT "TrailheadToMtFacility_trailheadId_fkey";

-- DropForeignKey
ALTER TABLE "TrailheadToPhoto" DROP CONSTRAINT "TrailheadToPhoto_photoId_fkey";

-- DropForeignKey
ALTER TABLE "TrailheadToPhoto" DROP CONSTRAINT "TrailheadToPhoto_trailheadId_fkey";

-- DropForeignKey
ALTER TABLE "UserFollow" DROP CONSTRAINT "UserFollow_followerId_fkey";

-- DropForeignKey
ALTER TABLE "UserFollow" DROP CONSTRAINT "UserFollow_followingId_fkey";

-- DropForeignKey
ALTER TABLE "UserInfo" DROP CONSTRAINT "UserInfo_userId_fkey";

-- DropForeignKey
ALTER TABLE "_MtFacilityToMtFacilityType" DROP CONSTRAINT "_MtFacilityToMtFacilityType_A_fkey";

-- DropForeignKey
ALTER TABLE "_MtFacilityToMtFacilityType" DROP CONSTRAINT "_MtFacilityToMtFacilityType_B_fkey";

-- DropTable
DROP TABLE "Account";

-- DropTable
DROP TABLE "AfterClimbMeal";

-- DropTable
DROP TABLE "AfterClimbSpa";

-- DropTable
DROP TABLE "Area";

-- DropTable
DROP TABLE "BusinessPeriod";

-- DropTable
DROP TABLE "EmailVerificationToken";

-- DropTable
DROP TABLE "Hashtag";

-- DropTable
DROP TABLE "Mention";

-- DropTable
DROP TABLE "Mountain";

-- DropTable
DROP TABLE "MountainFeature";

-- DropTable
DROP TABLE "MountainFeatureRatingHistory";

-- DropTable
DROP TABLE "MountainToMtFacility";

-- DropTable
DROP TABLE "MountainToPhoto";

-- DropTable
DROP TABLE "MountainToTrailhead";

-- DropTable
DROP TABLE "MountainUrlMemo";

-- DropTable
DROP TABLE "MtFacility";

-- DropTable
DROP TABLE "MtFacilityToMtFacilityType";

-- DropTable
DROP TABLE "MtFacilityToPayMethod";

-- DropTable
DROP TABLE "MtFacilityToPhoto";

-- DropTable
DROP TABLE "MtFacilityToRsvMethod";

-- DropTable
DROP TABLE "MtFacilityType";

-- DropTable
DROP TABLE "Notice";

-- DropTable
DROP TABLE "Parking";

-- DropTable
DROP TABLE "PayMethod";

-- DropTable
DROP TABLE "Photo";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "PostBookmark";

-- DropTable
DROP TABLE "PostLike";

-- DropTable
DROP TABLE "PostToHashtag";

-- DropTable
DROP TABLE "RatingHistory";

-- DropTable
DROP TABLE "RouteResult";

-- DropTable
DROP TABLE "RsvMethod";

-- DropTable
DROP TABLE "Session";

-- DropTable
DROP TABLE "Trailhead";

-- DropTable
DROP TABLE "TrailheadRating";

-- DropTable
DROP TABLE "TrailheadRatingHistory";

-- DropTable
DROP TABLE "TrailheadRoute";

-- DropTable
DROP TABLE "TrailheadRouteGroup";

-- DropTable
DROP TABLE "TrailheadToMtFacility";

-- DropTable
DROP TABLE "TrailheadToPhoto";

-- DropTable
DROP TABLE "User";

-- DropTable
DROP TABLE "UserFollow";

-- DropTable
DROP TABLE "UserInfo";

-- DropTable
DROP TABLE "VerificationToken";

-- DropTable
DROP TABLE "_MtFacilityToMtFacilityType";

-- DropEnum
DROP TYPE "MediaType";

-- DropEnum
DROP TYPE "MethodToThType";

-- DropEnum
DROP TYPE "MethodType";

-- DropEnum
DROP TYPE "SegmentType";

-- DropEnum
DROP TYPE "TrailheadRouteGroupType";

-- DropEnum
DROP TYPE "uploadStatus";

-- CreateTable
CREATE TABLE "Todo" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "Todo_pkey" PRIMARY KEY ("id")
);
