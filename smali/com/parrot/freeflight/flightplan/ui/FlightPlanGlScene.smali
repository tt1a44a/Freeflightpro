.class public Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
.super Lcom/parrot/engine3d/Scene;
.source "FlightPlanGlScene.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/IFlightPlanEditor;
.implements Lcom/parrot/freeflight/flightplan/ui/IFlightPlanObjectsAccessor;
.implements Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;


# static fields
.field private static final INFORMATION_OBJECT_LIST_START_SIZE:I = 0x3

.field private static final INFORMATION_OBJECT_TEXT_INDEX:I = 0x0

.field private static final POI_LIST_START_SIZE:I = 0xa

.field private static final WAYPOINT_LIST_START_SIZE:I = 0x32


# instance fields
.field private final mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBuckled:Z

.field private mCenterOn:I

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDensityFactor:F

.field private mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGlContextCreated:Z

.field private final mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInformationObjects:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;",
            ">;"
        }
    .end annotation
.end field

.field private mLineShader:Lcom/parrot/engine3d/GLShader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMapProjection:Lcom/parrot/freeflight/map/IProjection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMinified:Z

.field private mObjectShader:Lcom/parrot/engine3d/GLShader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPois:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedPoiIndex:I

.field private mSelectedWayPointIndex:I

.field private final mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWayPoints:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mWayPointsLines:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/engine3d/GLThreadInterface;FLcom/parrot/engine3d/GLExtensionsSupport;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "glThreadInterface"    # Lcom/parrot/engine3d/GLThreadInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "densityFactor"    # F
    .param p4, "glExtensionsSupport"    # Lcom/parrot/engine3d/GLExtensionsSupport;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "minified"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x32

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 128
    invoke-direct {p0}, Lcom/parrot/engine3d/Scene;-><init>()V

    .line 92
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedWayPointIndex:I

    .line 93
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedPoiIndex:I

    .line 101
    iput-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    .line 104
    iput-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    .line 115
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    .line 116
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlContextCreated:Z

    .line 118
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 129
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    .line 131
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    .line 132
    iput p3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDensityFactor:F

    .line 133
    iput-boolean p5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMinified:Z

    .line 135
    new-instance v0, Lcom/parrot/freeflight/util/ui/MetricsServant;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 136
    new-instance v0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p4}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/GLExtensionsSupport;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    .line 144
    new-instance v0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristicsFactory;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 146
    return-void
.end method

.method private addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZLandroid/graphics/Bitmap;)V
    .locals 33
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scale"    # F
    .param p3, "isSelected"    # Z
    .param p4, "centerTexture"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v5, 0x7f0702bc

    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 421
    .local v9, "arrowTexture":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v5, 0x7f0702be

    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 423
    .local v31, "intermediatePointTexture":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinAltitude()F

    move-result v10

    .line 424
    .local v10, "wpMinAltitude":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v11

    .line 426
    .local v11, "wpMaxAltitude":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 427
    new-instance v2, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v11}, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;-><init>(Landroid/content/res/Resources;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)V

    .line 433
    .local v2, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v4

    .line 435
    .local v4, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getFollow()I

    move-result v3

    if-nez v3, :cond_0

    .line 436
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateRotation()V

    .line 439
    :cond_0
    const/4 v3, -0x1

    if-eq v4, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v4, v3, :cond_7

    .line 440
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    const/4 v13, 0x0

    .line 442
    .local v13, "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    check-cast v13, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 445
    .restart local v13    # "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v18

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v19

    move-object v12, v2

    invoke-virtual/range {v12 .. v19}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->computePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 446
    if-eqz v13, :cond_4

    .line 447
    const/4 v14, 0x0

    .line 448
    .local v14, "antePenultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-le v3, v5, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "antePenultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    check-cast v14, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 452
    .restart local v14    # "antePenultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v19

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v20

    move-object v15, v2

    invoke-virtual/range {v13 .. v20}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->computePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 453
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    move-object/from16 v3, p0

    move-object v5, v13

    move-object v6, v2

    move-object/from16 v8, v31

    invoke-virtual/range {v3 .. v9}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addLine(ILcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 477
    .end local v13    # "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v14    # "antePenultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v3

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->wayPointUpdatePoi(II)V

    .line 479
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlContextCreated:Z

    if-eqz v3, :cond_5

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v5, Lcom/parrot/engine3d/GLResourcesCreator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v5, v6, v2}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v3, v5}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 482
    :cond_5
    return-void

    .line 429
    .end local v2    # "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v4    # "index":I
    :cond_6
    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDensityFactor:F

    mul-float v22, v3, v5

    .line 430
    .local v22, "arcThickness":F
    new-instance v2, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    move-object/from16 v20, v0

    new-instance v21, Lcom/parrot/engine3d/objects/GLArc$Properties;

    const/4 v3, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 431
    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultWpOrbitRadius()F

    move-result v6

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v5, v6}, Lcom/parrot/engine3d/objects/GLArc$Properties;-><init>(FFF)V

    move-object v12, v2

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v18, p4

    invoke-direct/range {v12 .. v22}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;-><init>(Landroid/content/res/Resources;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/objects/GLArc$Properties;F)V

    .restart local v2    # "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    goto/16 :goto_0

    .line 456
    .end local v22    # "arcThickness":F
    .restart local v4    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    if-eqz v3, :cond_8

    if-nez v4, :cond_8

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 458
    .local v15, "bucklingWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v19

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v20

    invoke-virtual/range {v15 .. v20}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 461
    .end local v15    # "bucklingWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 463
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v24

    .line 464
    .local v24, "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v25

    .line 466
    .local v25, "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move-object/from16 v28, v0

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v29

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v30

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v30}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->computePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 468
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    move-result-object v32

    .line 469
    .local v32, "prevLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    if-eqz v32, :cond_9

    if-eqz v24, :cond_9

    .line 470
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateWayPoints(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FF)V

    .line 472
    :cond_9
    if-eqz v25, :cond_4

    .line 473
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    move-object/from16 v3, p0

    move-object v5, v2

    move-object/from16 v6, v25

    move-object/from16 v8, v31

    invoke-virtual/range {v3 .. v9}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addLine(ILcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 477
    .end local v24    # "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v25    # "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v32    # "prevLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    :cond_a
    const/4 v3, -0x1

    goto/16 :goto_2
.end method

.method private computeInformationObjectPosition()V
    .locals 4

    .prologue
    .line 1075
    const/4 v1, 0x0

    .local v1, "it":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "nbInformationObjects":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1076
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    .line 1077
    .local v0, "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->computePosition()V

    .line 1075
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1079
    .end local v0    # "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    :cond_0
    return-void
.end method

.method private computePoisPosition(FF)V
    .locals 8
    .param p1, "normalizedTilt"    # F
    .param p2, "zoomFactor"    # F

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 1049
    .local v7, "nbPois":I
    const/4 v6, 0x0

    .local v6, "it":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    .line 1051
    .local v0, "poi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 1049
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1053
    .end local v0    # "poi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    :cond_0
    return-void
.end method

.method private computeWayPointsPosition()V
    .locals 3

    .prologue
    .line 1041
    const/4 v0, 0x0

    .local v0, "it":I
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "nbWayPoints":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1042
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeWayPointAndSurroundingObjectsPositions(I)V

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    :cond_0
    return-void
.end method

.method private displayIntermediatePointsForPoi(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;ILcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V
    .locals 4
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "poiIndex"    # I
    .param p3, "neighborWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "neighborWayPointsLine"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 650
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 652
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    if-nez v2, :cond_1

    .line 653
    invoke-virtual {p4, v3, v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->setIntermediatePointsColor([F[F)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    invoke-virtual {p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    .line 656
    .local v0, "neighborWayPointPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 657
    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoiGlColor(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)[F

    move-result-object v1

    .line 658
    .local v1, "poiColor":[F
    invoke-virtual {p4, v1, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->setIntermediatePointsColor([F[F)V

    goto :goto_0

    .line 660
    .end local v1    # "poiColor":[F
    :cond_2
    invoke-virtual {p4, v3, v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->setIntermediatePointsColor([F[F)V

    goto :goto_0
.end method

.method private getCameraNormalizedTilt()F
    .locals 2

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    const/high16 v1, 0x42870000    # 67.5f

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getCameraZoomFactor()F
    .locals 6

    .prologue
    .line 1098
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget v0, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 1099
    .local v0, "zoom":F
    :goto_0
    const/high16 v1, 0x43800000    # 256.0f

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x471c4000    # 40000.0f

    div-float/2addr v1, v2

    return v1

    .line 1098
    .end local v0    # "zoom":F
    :cond_0
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_0
.end method

.method private getPoi(I)Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    .locals 1
    .param p1, "poiIndex"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 959
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    .line 962
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrevLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .locals 3
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 993
    if-lez p1, :cond_0

    .line 994
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 1001
    :goto_0
    return-object v1

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 998
    .local v0, "nbLines":I
    if-nez p1, :cond_1

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    if-eqz v1, :cond_1

    .line 999
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    goto :goto_0

    .line 1001
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPreviousLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 794
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 795
    .local v0, "nbLines":I
    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 796
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 800
    :goto_0
    return-object v1

    .line 797
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 798
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    goto :goto_0

    .line 800
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initObjectsOpenGLResources()V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 207
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v6, :cond_5

    .line 209
    const/4 v2, 0x0

    .local v2, "it":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 210
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 211
    .local v5, "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    instance-of v6, v5, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;

    if-eqz v6, :cond_0

    move-object v6, v5

    .line 212
    check-cast v6, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v6, v7, v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->setShader(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/GLShader;)V

    .line 216
    :goto_1
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->createGLResources(Landroid/content/res/Resources;)Z

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setShader(Lcom/parrot/engine3d/GLShader;)V

    goto :goto_1

    .line 218
    .end local v5    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_1
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_2

    .line 219
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    .line 220
    .local v0, "glPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 221
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->createGLResources(Landroid/content/res/Resources;)Z

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 223
    .end local v0    # "glPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    :cond_2
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v2, v4, :cond_3

    .line 224
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 225
    .local v3, "line":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v3, v6, v7}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->setShader(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/GLShader;)V

    .line 226
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->createGLResources(Landroid/content/res/Resources;)Z

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 228
    .end local v3    # "line":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    :cond_3
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    if-ge v2, v4, :cond_4

    .line 229
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    .line 230
    .local v1, "infoObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 231
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->createGLResources(Landroid/content/res/Resources;)Z

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 234
    .end local v1    # "infoObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    :cond_4
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v6, :cond_5

    .line 235
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/map/gl/GLDrone;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 236
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/map/gl/GLDrone;->createGLResources(Landroid/content/res/Resources;)Z

    .line 239
    .end local v2    # "it":I
    .end local v4    # "size":I
    :cond_5
    return-void
.end method

.method private initShaders()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f10001c

    const v2, 0x7f100023

    invoke-static {v0, v1, v2}, Lcom/parrot/engine3d/GLShaderFactory;->load(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/GLShader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aTexCoord"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uTextureSampler"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uFrontColor"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uBackColor"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100014

    const v2, 0x7f100013

    invoke-static {v0, v1, v2}, Lcom/parrot/engine3d/GLShaderFactory;->load(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/GLShader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aColor"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 200
    :cond_1
    return-void
.end method

.method private isCenteredOnDrone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1180
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCenterOn:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCenteredOnUser()Z
    .locals 2

    .prologue
    .line 1184
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCenterOn:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private objectsToResourcesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/engine3d/IGLResources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1150
    .local v0, "resourcesList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1151
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1152
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1153
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1154
    return-object v0
.end method

.method private removeInformationObjectBetween(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
    .locals 7
    .param p1, "wayPoint1"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wayPoint2"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 824
    const/4 v3, 0x0

    .line 825
    .local v3, "it":I
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 827
    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 828
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    .line 829
    .local v2, "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->getWayPoint1()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 830
    .local v0, "infoWayPoint1":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->getWayPoint2()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v1

    .line 832
    .local v1, "infoWayPoint2":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_1

    :cond_0
    if-ne v0, p2, :cond_3

    if-ne v1, p1, :cond_3

    .line 837
    .end local v0    # "infoWayPoint1":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v1    # "infoWayPoint2":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v2    # "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    :cond_1
    if-ge v3, v4, :cond_2

    .line 838
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    .line 840
    .restart local v2    # "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    monitor-enter p0

    .line 841
    :try_start_0
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 842
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v6, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$2;

    invoke-direct {v6, p0, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$2;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;)V

    invoke-interface {v5, v6}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 852
    .end local v2    # "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    :cond_2
    return-void

    .line 835
    .restart local v0    # "infoWayPoint1":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .restart local v1    # "infoWayPoint2":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .restart local v2    # "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 836
    goto :goto_0

    .line 842
    .end local v0    # "infoWayPoint1":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v1    # "infoWayPoint2":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private updateDistances()V
    .locals 11

    .prologue
    .line 559
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 560
    const/4 v2, 0x0

    .local v2, "it":I
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 561
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    .line 562
    .local v1, "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->getWayPoint1()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v5

    .line 563
    .local v5, "wayPoint1":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->getWayPoint2()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v6

    .line 564
    .local v6, "wayPoint2":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v8

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;F)F

    move-result v0

    .line 566
    .local v0, "distance":F
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v8, v0}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatDistanceString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->updateText(ILjava/lang/String;)V

    .line 568
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v4

    check-cast v4, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    .line 569
    .local v4, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->isCreated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 570
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v8, Lcom/parrot/engine3d/GLResourcesUpdator;

    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v8, v9, v4}, Lcom/parrot/engine3d/GLResourcesUpdator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v7, v8}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 560
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "distance":F
    .end local v1    # "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    .end local v2    # "it":I
    .end local v3    # "size":I
    .end local v4    # "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    .end local v5    # "wayPoint1":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v6    # "wayPoint2":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_1
    return-void
.end method

.method private wayPointUpdatePoi(II)V
    .locals 6
    .param p1, "wayPointIndex"    # I
    .param p2, "poiIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 639
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 641
    .local v0, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v0, :cond_0

    .line 642
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedWayPointIndex:I

    if-ne v1, p1, :cond_1

    move v1, v2

    :goto_0
    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedPoiIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateColorsAccordingToSituation(ZZ)V

    .line 644
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->displayIntermediatePointsForPoi(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;ILcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V

    .line 645
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->displayIntermediatePointsForPoi(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;ILcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V

    .line 647
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 642
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public addDistanceBetween(II)V
    .locals 18
    .param p1, "wayPointIndex1"    # I
    .param p2, "wayPointIndex2"    # I

    .prologue
    .line 307
    invoke-virtual/range {p0 .. p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v13

    .line 308
    .local v13, "glWayPoint1":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v9

    .line 310
    .local v9, "glWayPoint2":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v13, :cond_0

    if-eqz v9, :cond_0

    .line 311
    invoke-virtual {v13}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v14

    .line 312
    .local v14, "wayPoint1":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v15

    .line 314
    .local v15, "wayPoint2":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v3, 0x7f0702c3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 315
    .local v11, "distanceBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v14}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v3

    invoke-virtual {v15}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v15}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;F)F

    move-result v10

    .line 316
    .local v10, "distance":F
    new-instance v12, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    move-object/from16 v16, v0

    const/high16 v2, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDensityFactor:F

    mul-float v17, v2, v3

    new-instance v2, Lcom/parrot/engine3d/bitmaps/BitmapText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 317
    invoke-virtual {v3, v10}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatDistanceString(F)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f06014f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/high16 v5, -0x1000000

    .line 318
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    move-object v3, v12

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object v6, v11

    move-object v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;-><init>(Lcom/parrot/engine3d/GLShader;FLandroid/graphics/Bitmap;Lcom/parrot/engine3d/bitmaps/BitmapText;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 320
    .local v12, "distanceObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlContextCreated:Z

    if-eqz v2, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v3, Lcom/parrot/engine3d/GLResourcesCreator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v12}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v2, v3}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 325
    .end local v10    # "distance":F
    .end local v11    # "distanceBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "distanceObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    .end local v14    # "wayPoint1":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v15    # "wayPoint2":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_0
    return-void
.end method

.method public addDrone(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 18
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-nez v2, :cond_0

    .line 856
    const/high16 v2, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDensityFactor:F

    mul-float v9, v2, v3

    .line 857
    .local v9, "droneSize":F
    monitor-enter p0

    .line 858
    :try_start_0
    new-instance v2, Lcom/parrot/freeflight/map/gl/GLDrone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v6

    double-to-float v6, v6

    .line 859
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v10

    const/4 v11, 0x1

    invoke-direct/range {v2 .. v11}, Lcom/parrot/freeflight/map/gl/GLDrone;-><init>(Landroid/content/Context;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/core/model/DroneModel$Position;FILcom/parrot/freeflight/flightplan/GLBitmapCache;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    .line 860
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMinified:Z

    move/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->isCenteredOnDrone()Z

    move-result v17

    invoke-virtual/range {v10 .. v17}, Lcom/parrot/freeflight/map/gl/GLDrone;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V

    .line 862
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlContextCreated:Z

    if-eqz v2, :cond_0

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v3, Lcom/parrot/engine3d/GLResourcesCreator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-direct {v3, v4, v5}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v2, v3}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 866
    .end local v9    # "droneSize":F
    :cond_0
    return-void

    .line 860
    .restart local v9    # "droneSize":F
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addLine(ILcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "lineIndex"    # I
    .param p2, "wayPoint1"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "wayPoint2"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "objectShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "centerTexture"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "arrowTexture"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 722
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    iget v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDensityFactor:F

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 724
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinAltitude()F

    move-result v8

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v9

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;-><init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FFF)V

    .line 726
    .local v0, "wayPointsLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    monitor-enter p0

    .line 727
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlContextCreated:Z

    if-eqz v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/engine3d/GLResourcesCreator;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 736
    :cond_1
    return-void

    .line 730
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Z)I
    .locals 13
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isSelected"    # Z

    .prologue
    .line 346
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    if-eqz p2, :cond_1

    const v1, 0x7f0702c1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 347
    .local v6, "poiBitmap":Landroid/graphics/Bitmap;
    const/high16 v1, 0x42b40000    # 90.0f

    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDensityFactor:F

    mul-float v3, v1, v2

    .line 348
    .local v3, "pointSize":F
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v7

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;-><init>(Landroid/content/res/Resources;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;FZLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;F)V

    .line 349
    .local v0, "glPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v11

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v12

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 351
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlContextCreated:Z

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/engine3d/GLResourcesCreator;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v4, v0}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 354
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v1

    return v1

    .line 346
    .end local v0    # "glPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    .end local v3    # "pointSize":F
    .end local v6    # "poiBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const v1, 0x7f0702c0

    goto :goto_0
.end method

.method public addSpeedBetween(III)V
    .locals 14
    .param p1, "wayPointIndex1"    # I
    .param p2, "wayPointIndex2"    # I
    .param p3, "speed"    # I

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v11

    .line 329
    .local v11, "glWayPoint1":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v8

    .line 331
    .local v8, "glWayPoint2":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    .line 332
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v2, 0x7f0702c3

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 333
    .local v9, "distanceBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    iget-object v12, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const/high16 v1, 0x42a00000    # 80.0f

    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDensityFactor:F

    mul-float v13, v1, v2

    new-instance v1, Lcom/parrot/engine3d/bitmaps/BitmapText;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    move/from16 v0, p3

    int-to-float v3, v0

    .line 334
    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatSpeedString(F)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f06014f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v4, -0x1000000

    .line 335
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    move-object v2, v10

    move-object v3, v12

    move v4, v13

    move-object v5, v9

    move-object v6, v1

    move-object v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;-><init>(Lcom/parrot/engine3d/GLShader;FLandroid/graphics/Bitmap;Lcom/parrot/engine3d/bitmaps/BitmapText;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 337
    .local v10, "distanceObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlContextCreated:Z

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/engine3d/GLResourcesCreator;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v10}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 342
    .end local v9    # "distanceBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "distanceObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    :cond_0
    return-void
.end method

.method public addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)I
    .locals 4
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isSelected"    # Z

    .prologue
    .line 410
    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedPoiIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 411
    const/4 p2, 0x0

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    if-eqz p2, :cond_1

    const v2, 0x7f0702c8

    :goto_0
    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 414
    .local v0, "centerTexture":Landroid/graphics/Bitmap;
    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDensityFactor:F

    mul-float v1, v2, v3

    .line 415
    .local v1, "pointSize":F
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZLandroid/graphics/Bitmap;)V

    .line 416
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    return v2

    .line 413
    .end local v0    # "centerTexture":Landroid/graphics/Bitmap;
    .end local v1    # "pointSize":F
    :cond_1
    const v2, 0x7f0702c7

    goto :goto_0
.end method

.method public addWayPointToPoi(II)V
    .locals 0
    .param p1, "wayPointIndex"    # I
    .param p2, "poiIndex"    # I

    .prologue
    .line 630
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->wayPointUpdatePoi(II)V

    .line 631
    return-void
.end method

.method public buckle(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 3
    .param p1, "bucklingWayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    .line 488
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZLandroid/graphics/Bitmap;)V

    .line 489
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 1108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    .line 1110
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1111
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->objectsToResourcesList()Ljava/util/List;

    move-result-object v0

    .line 1113
    .local v0, "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    monitor-enter p0

    .line 1114
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1115
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1116
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1117
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$3;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$3;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 1130
    .end local v0    # "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    :cond_0
    return-void

    .line 1118
    .restart local v0    # "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public computeObjectsPosition()V
    .locals 10

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v0, :cond_1

    .line 1057
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v8

    .line 1058
    .local v8, "normalizedTilt":F
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v9

    .line 1060
    .local v9, "zoomFactor":F
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeWayPointsPosition()V

    .line 1061
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeWayPointsPosition()V

    .line 1066
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeInformationObjectPosition()V

    .line 1067
    invoke-direct {p0, v8, v9}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computePoisPosition(FF)V

    .line 1068
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v4

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v5

    iget-boolean v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMinified:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->isCenteredOnDrone()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/freeflight/map/gl/GLDrone;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V

    .line 1072
    .end local v8    # "normalizedTilt":F
    .end local v9    # "zoomFactor":F
    :cond_1
    return-void
.end method

.method public computePoiPosition(I)V
    .locals 6
    .param p1, "poiIndex"    # I

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    move-result-object v0

    .line 1013
    .local v0, "glPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    if-eqz v0, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v4

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 1016
    :cond_0
    return-void
.end method

.method public computeWayPointAndSurroundingObjectsPositions(I)V
    .locals 12
    .param p1, "wayPointIndex"    # I

    .prologue
    .line 1019
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 1020
    .local v0, "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v0, :cond_2

    .line 1021
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v1

    .line 1022
    .local v1, "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v2

    .line 1023
    .local v2, "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinAltitude()F

    move-result v11

    .line 1024
    .local v11, "wpMinAltitude":F
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v10

    .line 1026
    .local v10, "wpMaxAltitude":F
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v6

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->computePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 1028
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    move-result-object v9

    .line 1029
    .local v9, "prevLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    if-eqz v9, :cond_0

    if-eqz v1, :cond_0

    .line 1030
    invoke-virtual {v9, v1, v0, v11, v10}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateWayPoints(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FF)V

    .line 1032
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    move-result-object v8

    .line 1033
    .local v8, "line":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    if-eqz v8, :cond_1

    if-eqz v2, :cond_1

    .line 1034
    invoke-virtual {v8, v0, v2, v11, v10}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateWayPoints(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FF)V

    .line 1036
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeInformationObjectPosition()V

    .line 1038
    .end local v1    # "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v2    # "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v8    # "line":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .end local v9    # "prevLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .end local v10    # "wpMaxAltitude":F
    .end local v11    # "wpMinAltitude":F
    :cond_2
    return-void
.end method

.method public findLineIndex(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)I
    .locals 1
    .param p1, "line"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1142
    if-eqz p1, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1145
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public findWayPointIndex(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)I
    .locals 1
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1134
    if-eqz p1, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1137
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInformationObjects()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    return-object v0
.end method

.method public getLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 984
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 987
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNbLines()I
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNbWayPoints()I
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .locals 3
    .param p1, "wayPointIndex"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 741
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 742
    .local v0, "nbWayPoints":I
    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 745
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPois()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 940
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    return-object v0
.end method

.method public getPrevWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .locals 3
    .param p1, "wayPointIndex"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 751
    if-lez p1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 758
    :goto_0
    return-object v1

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 755
    .local v0, "nbWayPoints":I
    if-nez p1, :cond_1

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    if-eqz v1, :cond_1

    .line 756
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    goto :goto_0

    .line 758
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnitConverter()Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    return-object v0
.end method

.method public getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .locals 3
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 946
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 948
    .local v0, "nbWayPoints":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 949
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 953
    :goto_0
    return-object v1

    .line 950
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    if-lez v0, :cond_1

    .line 951
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    goto :goto_0

    .line 953
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWayPoints()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    return-object v0
.end method

.method public getWayPointsLines()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 978
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    return-object v0
.end method

.method public isBuckled()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    return v0
.end method

.method public onContextChanged(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 244
    invoke-super {p0, p1, p2}, Lcom/parrot/engine3d/Scene;->onContextChanged(II)V

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWidth2:I

    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mHeight2:I

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->updateScreenSize(II)V

    .line 247
    invoke-static {v11, v11, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 250
    int-to-float v0, p1

    int-to-float v1, p2

    div-float v10, v0, v1

    .line 251
    .local v10, "ratio":F
    if-le p1, p2, :cond_0

    .end local p1    # "width":I
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v10

    div-float/2addr v0, v1

    float-to-int v8, v0

    .line 252
    .local v8, "max":I
    int-to-float v0, v8

    mul-float/2addr v0, v10

    float-to-int v9, v0

    .line 253
    .local v9, "maxWithRatio":I
    new-instance v0, Lcom/parrot/engine3d/GLProjection;

    neg-int v1, v9

    int-to-float v1, v1

    int-to-float v2, v9

    neg-int v3, v8

    int-to-float v3, v3

    int-to-float v4, v8

    neg-int v5, v8

    int-to-float v5, v5

    int-to-float v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/parrot/engine3d/GLProjection;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjectionMatrix:[F

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v2, v1, Lcom/parrot/engine3d/GLProjection;->mLeft:F

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v3, v1, Lcom/parrot/engine3d/GLProjection;->mRight:F

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v4, v1, Lcom/parrot/engine3d/GLProjection;->mBottom:F

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v5, v1, Lcom/parrot/engine3d/GLProjection;->mTop:F

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v6, v1, Lcom/parrot/engine3d/GLProjection;->mNear:F

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v7, v1, Lcom/parrot/engine3d/GLProjection;->mFar:F

    move v1, v11

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mVpMatrix:[F

    invoke-static {v0, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mViewMatrix:[F

    move v1, v11

    move v3, v11

    move v5, v11

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 258
    return-void

    .end local v8    # "max":I
    .end local v9    # "maxWithRatio":I
    .restart local p1    # "width":I
    :cond_0
    move p1, p2

    .line 251
    goto :goto_0
.end method

.method public onContextCreated()V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 155
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 156
    const/16 v0, 0x207

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 157
    invoke-static {v11}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 160
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 161
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 164
    new-instance v0, Lcom/parrot/engine3d/GLCamera;

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/parrot/engine3d/GLCamera;-><init>(FFFFFFFFF)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mViewMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v2, v2, Lcom/parrot/engine3d/GLCamera;->mPosX:F

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v3, v3, Lcom/parrot/engine3d/GLCamera;->mPosY:F

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v4, v4, Lcom/parrot/engine3d/GLCamera;->mPosZ:F

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v5, v5, Lcom/parrot/engine3d/GLCamera;->mLookAtX:F

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v6, v6, Lcom/parrot/engine3d/GLCamera;->mLookAtY:F

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v7, v7, Lcom/parrot/engine3d/GLCamera;->mLookAtZ:F

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v8, v8, Lcom/parrot/engine3d/GLCamera;->mUpX:F

    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v9, v9, Lcom/parrot/engine3d/GLCamera;->mUpY:F

    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v10, v10, Lcom/parrot/engine3d/GLCamera;->mUpZ:F

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 171
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedWayPointIndex:I

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedPoiIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->restoreBitmaps(II)V

    .line 173
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->initShaders()V

    .line 174
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->initObjectsOpenGLResources()V

    .line 175
    iput-boolean v11, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlContextCreated:Z

    .line 176
    return-void
.end method

.method public onContextReleased()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 290
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->objectsToResourcesList()Ljava/util/List;

    move-result-object v2

    .line 292
    .local v2, "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v4, :cond_1

    .line 293
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_1
    const/4 v0, 0x0

    .local v0, "it":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 296
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/engine3d/IGLResources;

    .line 297
    .local v1, "resources":Lcom/parrot/engine3d/IGLResources;
    invoke-interface {v1, v5}, Lcom/parrot/engine3d/IGLResources;->markResourcesCreated(Z)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "it":I
    .end local v1    # "resources":Lcom/parrot/engine3d/IGLResources;
    .end local v2    # "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    .end local v3    # "size":I
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->clear()V

    .line 303
    iput-boolean v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlContextCreated:Z

    .line 304
    return-void
.end method

.method public onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 0
    .param p1, "mapProjection"    # Lcom/parrot/freeflight/map/IProjection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mapCameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 926
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    .line 927
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 928
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeObjectsPosition()V

    .line 929
    return-void
.end method

.method public onPoiMoved(ILcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "poiIndex"    # I
    .param p2, "position"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computePoiPosition(I)V

    .line 384
    return-void
.end method

.method public onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V
    .locals 7
    .param p1, "wayPointIndex"    # I
    .param p2, "position"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v6

    .line 548
    .local v6, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v6, :cond_1

    .line 549
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 552
    .local v0, "bucklingWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v4

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 554
    .end local v0    # "bucklingWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateDistances()V

    .line 556
    :cond_1
    return-void
.end method

.method public removeDrone()V
    .locals 3

    .prologue
    .line 869
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v1, Lcom/parrot/engine3d/GLResourcesDeletor;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-direct {v1, v2}, Lcom/parrot/engine3d/GLResourcesDeletor;-><init>(Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 871
    monitor-enter p0

    .line 872
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    .line 873
    monitor-exit p0

    .line 875
    :cond_0
    return-void

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeInformationObjects()V
    .locals 3

    .prologue
    .line 804
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 806
    .local v0, "informationObjectsTmpList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 808
    monitor-enter p0

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 810
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$1;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 821
    .end local v0    # "informationObjectsTmpList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;>;"
    :cond_0
    return-void

    .line 810
    .restart local v0    # "informationObjectsTmpList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removePoi(I)V
    .locals 3
    .param p1, "poiIndex"    # I

    .prologue
    .line 359
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 362
    const/4 v0, 0x0

    .local v0, "it":I
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 363
    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->wayPointUpdatePoi(II)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "it":I
    .end local v1    # "length":I
    :cond_0
    return-void
.end method

.method public removeWayPoint(I)V
    .locals 12
    .param p1, "wayPointIndex"    # I

    .prologue
    const/4 v11, 0x0

    .line 668
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 669
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 672
    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 674
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v8

    .line 708
    .local v8, "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    monitor-enter p0

    .line 709
    :try_start_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 710
    .local v10, "removedWp":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 712
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/engine3d/GLResourcesDeletor;

    invoke-direct {v2, v10}, Lcom/parrot/engine3d/GLResourcesDeletor;-><init>(Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 714
    if-eqz v8, :cond_1

    .line 715
    invoke-virtual {v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v9

    .line 716
    .local v9, "prevWpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    invoke-virtual {v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v1

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->wayPointUpdatePoi(II)V

    .line 719
    .end local v8    # "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v9    # "prevWpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .end local v10    # "removedWp":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_1
    return-void

    .line 674
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 675
    :cond_2
    if-nez p1, :cond_4

    .line 676
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    if-eqz v1, :cond_3

    .line 678
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 679
    .local v0, "bucklingWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v4

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 682
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->copySecondVertexAttributes(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V

    .line 685
    .end local v0    # "bucklingWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_3
    monitor-enter p0

    .line 686
    :try_start_3
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 687
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 690
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_5

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    if-nez v1, :cond_5

    .line 691
    monitor-enter p0

    .line 692
    :try_start_4
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 693
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 695
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 696
    .local v7, "lineBeforeWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 698
    .local v6, "lineAfterWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    monitor-enter p0

    .line 699
    :try_start_5
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 700
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 701
    invoke-virtual {v7, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->copySecondVertexAttributes(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V

    goto/16 :goto_0

    .line 700
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 710
    .end local v6    # "lineAfterWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .end local v7    # "lineBeforeWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .restart local v8    # "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :catchall_4
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 716
    .restart local v9    # "prevWpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .restart local v10    # "removedWp":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_6
    const/4 v1, -0x1

    goto/16 :goto_1
.end method

.method public removeWayPointFromPoi(II)V
    .locals 0
    .param p1, "wayPointIndex"    # I
    .param p2, "poiIndex"    # I

    .prologue
    .line 635
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->wayPointUpdatePoi(II)V

    .line 636
    return-void
.end method

.method public declared-synchronized render()V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 264
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "it":I
    :try_start_0
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 265
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    .line 266
    .local v3, "poi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mVpMatrix:[F

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mViewMatrix:[F

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjectionMatrix:[F

    invoke-virtual {v3, v6, v7, v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->draw([F[F[F)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v3    # "poi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    :cond_0
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_1

    .line 270
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 271
    .local v2, "line":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mVpMatrix:[F

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mViewMatrix:[F

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjectionMatrix:[F

    invoke-virtual {v2, v6, v7, v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->draw([F[F[F)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    .end local v2    # "line":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    :cond_1
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_2

    .line 275
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 276
    .local v5, "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mVpMatrix:[F

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mViewMatrix:[F

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjectionMatrix:[F

    invoke-virtual {v5, v6, v7, v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->draw([F[F[F)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 279
    .end local v5    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_2
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v1, v4, :cond_3

    .line 280
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    .line 281
    .local v0, "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mVpMatrix:[F

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mViewMatrix:[F

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mProjectionMatrix:[F

    invoke-virtual {v0, v6, v7, v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->draw([F[F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 283
    .end local v0    # "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    :cond_3
    monitor-exit p0

    return-void

    .line 264
    .end local v4    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public restoreBitmaps(II)V
    .locals 16
    .param p1, "selectedWpIndex"    # I
    .param p2, "selectedPoiIndex"    # I

    .prologue
    .line 882
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 883
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v14, 0x7f0702bc

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 884
    .local v1, "arrowBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v14, 0x7f0702c8

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 885
    .local v3, "centerTextureSelected":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v14, 0x7f0702c7

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 887
    .local v2, "centerTexture":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .local v8, "it":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v8, v11, :cond_1

    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 889
    .local v5, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    move/from16 v0, p1

    if-ne v0, v8, :cond_0

    move-object v13, v3

    :goto_1
    invoke-virtual {v5, v13, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 887
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object v13, v2

    .line 889
    goto :goto_1

    .line 892
    .end local v1    # "arrowBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "centerTexture":Landroid/graphics/Bitmap;
    .end local v3    # "centerTextureSelected":Landroid/graphics/Bitmap;
    .end local v5    # "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v8    # "it":I
    .end local v11    # "size":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 893
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v14, 0x7f0702bc

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 894
    .restart local v1    # "arrowBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v14, 0x7f0702c8

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 896
    .restart local v2    # "centerTexture":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .restart local v8    # "it":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .restart local v11    # "size":I
    :goto_2
    if-ge v8, v11, :cond_2

    .line 897
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 898
    .local v6, "glWayPointLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    invoke-virtual {v6, v2, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 896
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 901
    .end local v1    # "arrowBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "centerTexture":Landroid/graphics/Bitmap;
    .end local v6    # "glWayPointLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .end local v8    # "it":I
    .end local v11    # "size":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 902
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v14, 0x7f0702c0

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 903
    .local v9, "poiBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v14, 0x7f0702c1

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 904
    .local v10, "selectedPoiBitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .restart local v8    # "it":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .restart local v11    # "size":I
    :goto_3
    if-ge v8, v11, :cond_4

    .line 905
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPois:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    .line 906
    .local v4, "glPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    move/from16 v0, p2

    if-ne v8, v0, :cond_3

    move-object v13, v10

    :goto_4
    invoke-virtual {v4, v13}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 904
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move-object v13, v9

    .line 906
    goto :goto_4

    .line 910
    .end local v4    # "glPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    .end local v8    # "it":I
    .end local v9    # "poiBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "selectedPoiBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "size":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 911
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v14, 0x7f0702c3

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 913
    .local v12, "textInfoBitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .restart local v8    # "it":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .restart local v11    # "size":I
    :goto_5
    if-ge v8, v11, :cond_5

    .line 914
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    .line 915
    .local v7, "infoObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    invoke-virtual {v7, v12}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 913
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 919
    .end local v7    # "infoObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    .end local v8    # "it":I
    .end local v11    # "size":I
    .end local v12    # "textInfoBitmap":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v13, :cond_6

    .line 920
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-virtual {v15}, Lcom/parrot/freeflight/map/gl/GLDrone;->getTextureResId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/map/gl/GLDrone;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 922
    :cond_6
    return-void
.end method

.method public selectPoi(IZ)V
    .locals 7
    .param p1, "poiIndex"    # I
    .param p2, "poiSelected"    # Z

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    move-result-object v0

    .line 389
    .local v0, "glPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    if-eqz v0, :cond_3

    .line 390
    if-eqz p2, :cond_1

    .end local p1    # "poiIndex":I
    :goto_0
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedPoiIndex:I

    .line 392
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    if-eqz p2, :cond_2

    const v4, 0x7f0702c1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 393
    .local v2, "poiBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 394
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setSelected(Z)V

    .line 396
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v3

    check-cast v3, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    .line 397
    .local v3, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->isCreated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v5, Lcom/parrot/engine3d/GLResourcesUpdator;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v5, v6, v3}, Lcom/parrot/engine3d/GLResourcesUpdator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v4, v5}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 401
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 402
    .local v1, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    const/4 v5, 0x0

    invoke-virtual {v1, v5, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateColorsAccordingToSituation(ZZ)V

    goto :goto_2

    .line 390
    .end local v1    # "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v2    # "poiBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    .restart local p1    # "poiIndex":I
    :cond_1
    const/4 p1, -0x1

    goto :goto_0

    .line 392
    .end local p1    # "poiIndex":I
    :cond_2
    const v4, 0x7f0702c0

    goto :goto_1

    .line 405
    :cond_3
    return-void
.end method

.method public selectWayPoint(IZZ)V
    .locals 6
    .param p1, "wayPointIndex"    # I
    .param p2, "isSelected"    # Z
    .param p3, "updateTexture"    # Z

    .prologue
    const/4 v3, -0x1

    .line 507
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 508
    .local v0, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v0, :cond_4

    .line 509
    if-eqz p2, :cond_1

    .end local p1    # "wayPointIndex":I
    :goto_0
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedWayPointIndex:I

    .line 511
    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedPoiIndex:I

    if-eq v4, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, p2, v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setSelected(ZZ)V

    .line 512
    if-eqz p3, :cond_0

    .line 513
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    if-eqz p2, :cond_3

    const v3, 0x7f0702c8

    :goto_2
    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 514
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateBitmap(Landroid/graphics/Bitmap;Z)V

    .line 515
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v2

    check-cast v2, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    .line 516
    .local v2, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->isCreated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v4, Lcom/parrot/engine3d/GLResourcesUpdator;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v4, v5, v2}, Lcom/parrot/engine3d/GLResourcesUpdator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v3, v4}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 523
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    :cond_0
    :goto_3
    return-void

    .restart local p1    # "wayPointIndex":I
    :cond_1
    move p1, v3

    .line 509
    goto :goto_0

    .line 511
    .end local p1    # "wayPointIndex":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 513
    :cond_3
    const v3, 0x7f0702c7

    goto :goto_2

    .line 521
    .restart local p1    # "wayPointIndex":I
    :cond_4
    iput v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedWayPointIndex:I

    goto :goto_3
.end method

.method public setCenterOn(I)V
    .locals 0
    .param p1, "centerOn"    # I

    .prologue
    .line 1176
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mCenterOn:I

    .line 1177
    return-void
.end method

.method public setMinified(Z)V
    .locals 0
    .param p1, "minified"    # Z

    .prologue
    .line 1172
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMinified:Z

    .line 1173
    return-void
.end method

.method public setPlanProductInfos(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 2
    .param p1, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "planProductCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 1159
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 1161
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->setMaxAltitude(F)V

    .line 1164
    :cond_0
    return-void
.end method

.method public unbuckle()V
    .locals 4

    .prologue
    .line 493
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mBuckled:Z

    .line 495
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 496
    .local v1, "nbWayPoints":I
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 497
    .local v0, "bucklingWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeWayPoint(I)V

    .line 498
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    add-int/lit8 v3, v1, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-direct {p0, v2, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeInformationObjectBetween(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 499
    return-void
.end method

.method public updateDronePosition(Lcom/parrot/freeflight/core/model/DroneModel$Position;D)Z
    .locals 10
    .param p1, "droneModelPosition"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "relativeAltitude"    # D

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    move-result v8

    .line 1084
    .local v8, "positionUpdated":Z
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    double-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->updateRelativeAltitude(F)Z

    move-result v9

    .line 1085
    .local v9, "relativeAltitudeUpdated":Z
    if-nez v8, :cond_0

    if-eqz v9, :cond_1

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraNormalizedTilt()F

    move-result v4

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getCameraZoomFactor()F

    move-result v5

    iget-boolean v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMinified:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->isCenteredOnDrone()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/freeflight/map/gl/GLDrone;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V

    .line 1087
    const/4 v0, 0x1

    .line 1090
    .end local v8    # "positionUpdated":Z
    .end local v9    # "relativeAltitudeUpdated":Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLineIntermediatePointsColor(I[F[F)V
    .locals 2
    .param p1, "startWpIndex"    # I
    .param p2, "intermediatePointsColor"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "intermediateArrowsColor"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 786
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 788
    .local v0, "wayPointsLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    invoke-virtual {v0, p2, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->setIntermediatePointsColor([F[F)V

    .line 790
    .end local v0    # "wayPointsLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    :cond_0
    return-void
.end method

.method public updateLineIntermediatePointsColor(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;[F[F)V
    .locals 0
    .param p1, "wayPointsLine"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "intermediatePointsColor"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "intermediateArrowsColor"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 782
    invoke-virtual {p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->setIntermediatePointsColor([F[F)V

    .line 783
    return-void
.end method

.method public updateLinesAroundWayPoint(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
    .locals 7
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 763
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPoints:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 764
    .local v3, "wayPointIndex":I
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 765
    .local v0, "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v1

    .line 766
    .local v1, "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinAltitude()F

    move-result v5

    .line 767
    .local v5, "wpMinAltitude":F
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v4

    .line 769
    .local v4, "wpMaxAltitude":F
    if-eqz v0, :cond_0

    .line 770
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mWayPointsLines:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    invoke-virtual {v6, p1, v0, v5, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateWayPoints(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FF)V

    .line 772
    :cond_0
    if-eqz v1, :cond_1

    .line 773
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPreviousLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    move-result-object v2

    .line 775
    .local v2, "previousLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    if-eqz v2, :cond_1

    .line 776
    invoke-virtual {v2, v1, p1, v5, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateWayPoints(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FF)V

    .line 779
    .end local v2    # "previousLine":Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    :cond_1
    return-void
.end method

.method public updatePoiAltitude(IF)V
    .locals 5
    .param p1, "poiIndex"    # I
    .param p2, "altitude"    # F

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    move-result-object v0

    .line 371
    .local v0, "glPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    if-eqz v0, :cond_0

    .line 372
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getAltitude()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->updateText(ILjava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v1

    .line 375
    .local v1, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v3, Lcom/parrot/engine3d/GLResourcesUpdator;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v1}, Lcom/parrot/engine3d/GLResourcesUpdator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v2, v3}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 379
    .end local v1    # "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    :cond_0
    return-void
.end method

.method public updateWayPointAltitude(IF)V
    .locals 1
    .param p1, "wayPointIndex"    # I
    .param p2, "altitude"    # F

    .prologue
    .line 578
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateWayPointGraphics(ILjava/lang/String;)V

    .line 579
    return-void
.end method

.method public updateWayPointGraphics(ILjava/lang/String;)V
    .locals 7
    .param p1, "wayPointIndex"    # I
    .param p2, "primaryText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 589
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 590
    .local v0, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v0, :cond_2

    .line 592
    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedWayPointIndex:I

    if-ne p1, v2, :cond_3

    move v2, v3

    :goto_0
    iget v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mSelectedPoiIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    move v5, v3

    :goto_1
    invoke-virtual {v0, v2, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateColorsAccordingToSituation(ZZ)V

    .line 595
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateLinesAroundWayPoint(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 597
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    const/4 v2, 0x2

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setTextVisibility(IZ)V

    .line 600
    :cond_0
    if-eqz p2, :cond_6

    .line 601
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updatePrimaryText(Ljava/lang/String;)V

    .line 606
    :goto_3
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v1

    .line 607
    .local v1, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v3, Lcom/parrot/engine3d/GLResourcesUpdator;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v1}, Lcom/parrot/engine3d/GLResourcesUpdator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v2, v3}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 610
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateDistances()V

    .line 612
    .end local v1    # "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 592
    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v3, v4

    .line 598
    goto :goto_2

    .line 603
    :cond_6
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->generatePrimaryText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updatePrimaryText(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public updateWayPointIndex(I)V
    .locals 5
    .param p1, "wayPointIndex"    # I

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 528
    .local v0, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateIndex(I)V

    .line 530
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v1

    check-cast v1, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    .line 531
    .local v1, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v3, Lcom/parrot/engine3d/GLResourcesUpdator;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v1}, Lcom/parrot/engine3d/GLResourcesUpdator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v2, v3}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 535
    .end local v1    # "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    :cond_0
    return-void
.end method

.method public updateWayPointSpeed(II)V
    .locals 6
    .param p1, "wayPointIndex"    # I
    .param p2, "speed"    # I

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 617
    .local v0, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mInformationObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    .line 619
    .local v1, "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    int-to-float v5, p2

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatSpeedString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->updateText(ILjava/lang/String;)V

    .line 621
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v2

    .line 622
    .local v2, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->isCreated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v4, Lcom/parrot/engine3d/GLResourcesUpdator;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v4, v5, v2}, Lcom/parrot/engine3d/GLResourcesUpdator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v3, v4}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 626
    .end local v1    # "informationObject":Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
    .end local v2    # "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    :cond_0
    return-void
.end method

.method public updateYaw(IF)V
    .locals 1
    .param p1, "wayPointIndex"    # I
    .param p2, "yaw"    # F

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 540
    .local v0, "glWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateRotation()V

    .line 543
    :cond_0
    return-void
.end method
