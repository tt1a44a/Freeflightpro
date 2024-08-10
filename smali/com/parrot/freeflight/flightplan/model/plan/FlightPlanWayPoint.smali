.class public Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
.super Ljava/lang/Object;
.source "FlightPlanWayPoint.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/IJsonAble;
.implements Lcom/parrot/freeflight/flightplan/model/IMavlinkAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint$FollowMode;
    }
.end annotation


# static fields
.field public static final FOLLOW_NEXT:I = 0x1

.field public static final FOLLOW_NONE:I = 0x0

.field public static final FOLLOW_PREVIOUS:I = 0x2

.field private static final PROPERTY_ALTITUDE:Ljava/lang/String; = "altitude"

.field private static final PROPERTY_CONTINUE:Ljava/lang/String; = "continue"

.field private static final PROPERTY_FOLLOW:Ljava/lang/String; = "follow"

.field private static final PROPERTY_FOLLOW_POI:Ljava/lang/String; = "followPOI"

.field private static final PROPERTY_LAST_YAW:Ljava/lang/String; = "lastYaw"

.field private static final PROPERTY_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final PROPERTY_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final PROPERTY_POI:Ljava/lang/String; = "poi"

.field private static final PROPERTY_RADIUS:Ljava/lang/String; = "radius"

.field private static final PROPERTY_SPEED:Ljava/lang/String; = "speed"

.field private static final PROPERTY_TYPE:Ljava/lang/String; = "type"

.field private static final PROPERTY_YAW:Ljava/lang/String; = "yaw"


# instance fields
.field private mActions:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAltitude:F

.field private mArcCenterLatLng:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContinueMode:Z

.field private mDefaultAltitude:F

.field private mEndLinearLanding:Z

.field private mFollow:I

.field private mFollowPoi:Z

.field private mIndex:I

.field private mIsLockedOnPoi:Z

.field private mLandingLatLng:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLandingMode:I

.field private mLastYaw:F

.field private mLatLng:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRadius:F

.field private mSpeed:I

.field private mYaw:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIndex:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    .line 71
    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    .line 76
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    .line 80
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    .line 85
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIsLockedOnPoi:Z

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    .line 93
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;FIFIZLcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 11
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "altitude"    # F
    .param p3, "speed"    # I
    .param p4, "yaw"    # F
    .param p5, "follow"    # I
    .param p6, "continueMode"    # Z
    .param p7, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "planProductCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIndex:I

    .line 68
    const/4 v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIsLockedOnPoi:Z

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    .line 93
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 110
    if-eqz p7, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-virtual/range {p9 .. p9}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultAltitude()F

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setParams(Lcom/google/android/gms/maps/model/LatLng;FIFIZZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;F)V

    .line 111
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 113
    return-void

    .line 110
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;FIFLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 10
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "altitude"    # F
    .param p3, "speed"    # I
    .param p4, "yaw"    # F
    .param p5, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "planProductCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;-><init>(Lcom/google/android/gms/maps/model/LatLng;FIFIZLcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 3
    .param p1, "anotherWayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIndex:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    .line 71
    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    .line 76
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    .line 80
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    .line 85
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIsLockedOnPoi:Z

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    .line 93
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 116
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->copyParams(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 117
    iget v0, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIndex:I

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIndex:I

    .line 120
    return-void
.end method

.method private getLandingIndex()I
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 404
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;

    if-eqz v1, :cond_0

    .line 409
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 403
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 409
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public addActions(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    return-void
.end method

.method public copyParams(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 10
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    iget-object v1, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    iget v3, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    iget v4, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    iget v5, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    iget-boolean v6, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    iget-boolean v7, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    iget-object v8, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget v9, p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mDefaultAltitude:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setParams(Lcom/google/android/gms/maps/model/LatLng;FIFIZZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;F)V

    .line 125
    return-void
.end method

.method public createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 180
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mArcCenterLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 181
    .local v0, "cor":Lcom/google/android/gms/maps/model/LatLng;
    :goto_0
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v2, v2

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v3, v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    iget v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    sub-float/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkNavWaypointMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v1

    .line 182
    .local v1, "item":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->setParam3(F)V

    .line 183
    :cond_0
    return-object v1

    .line 180
    .end local v0    # "cor":Lcom/google/android/gms/maps/model/LatLng;
    .end local v1    # "item":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 236
    :cond_0
    :goto_0
    return v2

    .line 227
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 229
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 231
    .local v0, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 232
    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    iget v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    if-ne v3, v4, :cond_0

    .line 233
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 234
    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    iget v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    if-ne v3, v4, :cond_0

    .line 235
    iget-boolean v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    iget-boolean v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    if-ne v3, v4, :cond_0

    .line 236
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getAltitude()F
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIndex:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 277
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mDefaultAltitude:F

    .line 279
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    goto :goto_0
.end method

.method public getFollow()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIndex:I

    return v0
.end method

.method public getLandingLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 426
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 429
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_0
.end method

.method public getLandingMode()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    return v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    return v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 242
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 243
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    add-int v0, v2, v3

    .line 244
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 245
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 246
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    add-int v0, v2, v3

    .line 247
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int v0, v2, v1

    .line 248
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 242
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 244
    goto :goto_1
.end method

.method public initWithJsonObject(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "jsonData"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 160
    const-string v6, "altitude"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "altitude"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v6, v12

    :goto_0
    iput v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    .line 161
    const-string/jumbo v6, "speed"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "speed"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    :goto_1
    iput v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    .line 162
    const-string v6, "latitude"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "latitude"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 163
    .local v2, "lat":D
    :goto_2
    const-string v6, "longitude"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "longitude"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 164
    .local v4, "lon":D
    :goto_3
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 165
    const-string/jumbo v6, "yaw"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "yaw"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v6, v10

    :goto_4
    iput v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    .line 166
    const-string v6, "continue"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "continue"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v8

    :goto_5
    iput-boolean v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    .line 168
    const-string v6, "follow"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "follow"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, "follow":I
    :goto_6
    if-eqz v0, :cond_0

    if-eq v0, v8, :cond_0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_9

    .end local v0    # "follow":I
    :cond_0
    :goto_7
    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    .line 170
    const-string v6, "followPOI"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "followPOI"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_8
    iput-boolean v8, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    .line 171
    const-string v6, "lastYaw"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "lastYaw"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v6, v8

    :goto_9
    iput v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLastYaw:F

    .line 172
    const-string/jumbo v6, "type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string/jumbo v6, "type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "type":I
    :goto_a
    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    .line 174
    const-string/jumbo v6, "radius"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "radius"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v7, v6

    :cond_1
    iput v7, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    .line 175
    return-void

    .end local v1    # "type":I
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    :cond_2
    move v6, v7

    .line 160
    goto/16 :goto_0

    :cond_3
    move v6, v8

    .line 161
    goto/16 :goto_1

    :cond_4
    move-wide v2, v10

    .line 162
    goto/16 :goto_2

    .restart local v2    # "lat":D
    :cond_5
    move-wide v4, v10

    .line 163
    goto/16 :goto_3

    .restart local v4    # "lon":D
    :cond_6
    move v6, v7

    .line 165
    goto/16 :goto_4

    :cond_7
    move v6, v9

    .line 166
    goto :goto_5

    :cond_8
    move v0, v9

    .line 168
    goto :goto_6

    .restart local v0    # "follow":I
    :cond_9
    move v0, v9

    .line 169
    goto :goto_7

    .end local v0    # "follow":I
    :cond_a
    move v8, v9

    .line 170
    goto :goto_8

    :cond_b
    move v6, v7

    .line 171
    goto :goto_9

    .line 172
    :cond_c
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V
    .locals 8
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam4()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLastYaw:F

    .line 189
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getZ()F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    .line 190
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getX()F

    move-result v0

    .line 191
    .local v0, "lat":F
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getY()F

    move-result v1

    .line 192
    .local v1, "lon":F
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v4, v0

    float-to-double v6, v1

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 193
    return-void
.end method

.method public isContinueMode()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    return v0
.end method

.method public isEndLinearLanding()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mEndLinearLanding:Z

    return v0
.end method

.method public isFollowPoi()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    return v0
.end method

.method public isLockedOnPoi()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIsLockedOnPoi:Z

    return v0
.end method

.method public saveToJsonObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonData"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 143
    const-string v0, "longitude"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 144
    const-string v0, "altitude"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v0, "yaw"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v0, "speed"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "poi"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    :cond_0
    const-string v0, "continue"

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 151
    const-string v0, "followPOI"

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 152
    const-string v0, "follow"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const-string v0, "lastYaw"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLastYaw:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v0, "type"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v0, "radius"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 156
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    .line 344
    return-void
.end method

.method public setAltitude(F)V
    .locals 0
    .param p1, "altitude"    # F

    .prologue
    .line 284
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    .line 285
    return-void
.end method

.method public setArcCenterLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "arcCenterLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 421
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mArcCenterLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 422
    return-void
.end method

.method public setContinueMode(Z)V
    .locals 0
    .param p1, "continueMode"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    .line 335
    return-void
.end method

.method public setEndLinearLanding(Z)V
    .locals 0
    .param p1, "endLinearLanding"    # Z

    .prologue
    .line 443
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mEndLinearLanding:Z

    .line 444
    return-void
.end method

.method public setFollow(I)V
    .locals 0
    .param p1, "follow"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    .line 327
    return-void
.end method

.method public setFollowPoi(Z)V
    .locals 0
    .param p1, "followPoi"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    .line 360
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIndex:I

    .line 301
    return-void
.end method

.method public setIsLockedOnPoi(Z)V
    .locals 0
    .param p1, "isLockedOnPoi"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIsLockedOnPoi:Z

    .line 348
    return-void
.end method

.method public setLandingLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "landingLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 439
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 440
    return-void
.end method

.method public setLandingMode(I)V
    .locals 5
    .param p1, "landingMode"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    .line 373
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingIndex()I

    move-result v1

    .line 374
    .local v1, "landingIndex":I
    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLandingMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 375
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    if-gez v1, :cond_0

    .line 378
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 380
    const/4 v2, -0x1

    .line 381
    .local v2, "stopMediaIndex":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 382
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;

    if-eqz v3, :cond_4

    .line 383
    :cond_2
    move v2, v0

    .line 387
    :cond_3
    if-ltz v2, :cond_5

    .line 388
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mActions:Ljava/util/List;

    new-instance v4, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;

    invoke-direct {v4}, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 381
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 391
    :cond_5
    new-instance v3, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;

    invoke-direct {v3}, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;-><init>()V

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    goto :goto_0

    .line 395
    .end local v0    # "i":I
    .end local v2    # "stopMediaIndex":I
    :cond_6
    new-instance v3, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;

    invoke-direct {v3}, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;-><init>()V

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    goto :goto_0
.end method

.method public setLastYaw(F)V
    .locals 0
    .param p1, "lastYaw"    # F

    .prologue
    .line 363
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLastYaw:F

    .line 364
    return-void
.end method

.method public setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 317
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 318
    return-void
.end method

.method public setParams(Lcom/google/android/gms/maps/model/LatLng;FIFIZZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;F)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "altitude"    # F
    .param p3, "speed"    # I
    .param p4, "yaw"    # F
    .param p5, "follow"    # I
    .param p6, "continueMode"    # Z
    .param p7, "followPoi"    # Z
    .param p8, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "defaultAltitude"    # F

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 130
    iput p2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    .line 131
    iput p3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    .line 132
    iput p4, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    iput p4, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLastYaw:F

    .line 133
    iput p5, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    .line 134
    iput-boolean p6, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    .line 135
    iput-boolean p7, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    .line 136
    iput-object p8, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 137
    iput p9, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mDefaultAltitude:F

    .line 138
    return-void
.end method

.method public setPlanProductInfo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 1
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 434
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 435
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultAltitude()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mDefaultAltitude:F

    .line 436
    return-void
.end method

.method public setPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V
    .locals 3
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 270
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    .line 271
    if-eqz p1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mIsLockedOnPoi:Z

    .line 272
    return-void

    :cond_0
    move v0, v2

    .line 270
    goto :goto_0

    :cond_1
    move v1, v2

    .line 271
    goto :goto_1
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 417
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mRadius:F

    .line 418
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    .line 293
    return-void
.end method

.method public setYaw(F)V
    .locals 0
    .param p1, "yaw"    # F

    .prologue
    .line 308
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    .line 309
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WayPoint{altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mAltitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", follow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", continueMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mContinueMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 3
    .param p1, "prevWp"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "nextWp"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 210
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLastYaw:F

    .line 211
    .local v0, "newYaw":F
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollowPoi:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    if-ne v1, v2, :cond_2

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/Geometry;->computeYaw(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 221
    :cond_1
    :goto_0
    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mYaw:F

    .line 222
    return-void

    .line 214
    :cond_2
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-eqz p2, :cond_3

    .line 216
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/Geometry;->computeYaw(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    goto :goto_0

    .line 217
    :cond_3
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mFollow:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/Geometry;->computeYaw(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    goto :goto_0
.end method
