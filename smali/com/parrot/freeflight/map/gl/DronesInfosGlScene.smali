.class public Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;
.super Lcom/parrot/engine3d/Scene;
.source "DronesInfosGlScene.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;


# instance fields
.field private final mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

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

.field private mHome:Lcom/parrot/freeflight/map/gl/GLHome;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mImageShader:Lcom/parrot/engine3d/GLShader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsMinified:Z

.field private mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMapProjection:Lcom/parrot/freeflight/map/IProjection;
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

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUser:Lcom/parrot/freeflight/map/gl/GLUser;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/engine3d/GLThreadInterface;FLcom/parrot/engine3d/GLExtensionsSupport;Z)V
    .locals 2
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
    .line 89
    invoke-direct {p0}, Lcom/parrot/engine3d/Scene;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlContextCreated:Z

    .line 79
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 90
    iput-object p1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mResources:Landroid/content/res/Resources;

    .line 92
    iput-object p2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    .line 93
    iput p3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDensityFactor:F

    .line 94
    iput-boolean p5, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    .line 96
    new-instance v0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p4}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/GLExtensionsSupport;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    .line 98
    new-instance v0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristicsFactory;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 100
    return-void
.end method

.method private getCameraNormalizedTilt()F
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

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
    .line 395
    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget v0, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 396
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

    .line 395
    .end local v0    # "zoom":F
    :cond_0
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_0
.end method

.method private initObjectsOpenGLResources()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLHome;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLHome;->createGLResources(Landroid/content/res/Resources;)Z

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLUser;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLUser;->createGLResources(Landroid/content/res/Resources;)Z

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->createGLResources(Landroid/content/res/Resources;)Z

    .line 166
    :cond_2
    return-void
.end method

.method private initShaders()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f10001c

    const v2, 0x7f100009

    invoke-static {v0, v1, v2}, Lcom/parrot/engine3d/GLShaderFactory;->load(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/GLShader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aTexCoord"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uTextureSampler"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uFrontColor"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uBackColor"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 145
    :cond_0
    return-void
.end method

.method private isCenteredOnDrone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 426
    iget v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCenterOn:I

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
    .line 430
    iget v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCenterOn:I

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
    .locals 1
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
    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "resourcesList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    return-object v0
.end method


# virtual methods
.method public addDrone(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 20
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-nez v2, :cond_1

    .line 300
    const/high16 v2, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDensityFactor:F

    mul-float v9, v2, v3

    .line 301
    .local v9, "droneSize":F
    monitor-enter p0

    .line 302
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v11, 0x1

    .line 303
    .local v11, "isConnected":Z
    :goto_0
    new-instance v2, Lcom/parrot/freeflight/map/gl/GLDrone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v6

    double-to-float v6, v6

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v10

    invoke-direct/range {v2 .. v11}, Lcom/parrot/freeflight/map/gl/GLDrone;-><init>(Landroid/content/Context;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/core/model/DroneModel$Position;FILcom/parrot/freeflight/flightplan/GLBitmapCache;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    .line 305
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->getCameraNormalizedTilt()F

    move-result v16

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->getCameraZoomFactor()F

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->isCenteredOnDrone()Z

    move-result v19

    invoke-virtual/range {v12 .. v19}, Lcom/parrot/freeflight/map/gl/GLDrone;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V

    .line 308
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlContextCreated:Z

    if-eqz v2, :cond_1

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v3, Lcom/parrot/engine3d/GLResourcesCreator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-direct {v3, v4, v5}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v2, v3}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 312
    .end local v9    # "droneSize":F
    .end local v11    # "isConnected":Z
    :cond_1
    return-void

    .line 302
    .restart local v9    # "droneSize":F
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addHome(Lcom/parrot/freeflight/core/model/DroneModel$Position;)V
    .locals 6
    .param p1, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/location/LocationUtils;->isValidLocation(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDensityFactor:F

    mul-float v5, v0, v1

    .line 272
    .local v5, "droneSize":F
    monitor-enter p0

    .line 273
    :try_start_0
    new-instance v0, Lcom/parrot/freeflight/map/gl/GLHome;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/map/gl/GLHome;-><init>(Landroid/content/Context;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/flightplan/GLBitmapCache;F)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    .line 274
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    iget-boolean v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/map/gl/GLHome;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;Z)V

    .line 277
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlContextCreated:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v1, Lcom/parrot/engine3d/GLResourcesCreator;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    invoke-direct {v1, v2, v3}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 281
    .end local v5    # "droneSize":F
    :cond_0
    return-void

    .line 274
    .restart local v5    # "droneSize":F
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addUser(Lcom/parrot/freeflight/core/model/DroneModel$Position;Z)V
    .locals 12
    .param p1, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .param p2, "isDroneInScope"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/location/LocationUtils;->isValidLocation(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/high16 v0, 0x442f0000    # 700.0f

    iget v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDensityFactor:F

    mul-float v5, v0, v1

    .line 229
    .local v5, "droneSize":F
    monitor-enter p0

    .line 230
    :try_start_0
    new-instance v0, Lcom/parrot/freeflight/map/gl/GLUser;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mImageShader:Lcom/parrot/engine3d/GLShader;

    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/map/gl/GLUser;-><init>(Landroid/content/Context;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/flightplan/GLBitmapCache;FZ)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    .line 231
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v6, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    iget-object v7, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v8, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v9, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    iget-boolean v10, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->isCenteredOnUser()Z

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lcom/parrot/freeflight/map/gl/GLUser;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;ZZ)V

    .line 233
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlContextCreated:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v1, Lcom/parrot/engine3d/GLResourcesCreator;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    invoke-direct {v1, v2, v3}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 237
    .end local v5    # "droneSize":F
    :cond_0
    return-void

    .line 231
    .restart local v5    # "droneSize":F
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public computeObjectsPosition()V
    .locals 8

    .prologue
    .line 365
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->getCameraNormalizedTilt()F

    move-result v4

    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->getCameraZoomFactor()F

    move-result v5

    iget-boolean v6, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->isCenteredOnDrone()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/freeflight/map/gl/GLDrone;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    iget-boolean v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->isCenteredOnUser()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/map/gl/GLUser;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;ZZ)V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    iget-boolean v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/map/gl/GLHome;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;Z)V

    .line 376
    :cond_2
    return-void
.end method

.method public getUnitConverter()Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    return-object v0
.end method

.method public hasDrone()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHome()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUser()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextChanged(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 171
    invoke-super {p0, p1, p2}, Lcom/parrot/engine3d/Scene;->onContextChanged(II)V

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    iget v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mWidth2:I

    iget v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHeight2:I

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->updateScreenSize(II)V

    .line 174
    invoke-static {v11, v11, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 177
    int-to-float v0, p1

    int-to-float v1, p2

    div-float v10, v0, v1

    .line 178
    .local v10, "ratio":F
    if-le p1, p2, :cond_0

    .end local p1    # "width":I
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v10

    div-float/2addr v0, v1

    float-to-int v8, v0

    .line 179
    .local v8, "max":I
    int-to-float v0, v8

    mul-float/2addr v0, v10

    float-to-int v9, v0

    .line 180
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

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjectionMatrix:[F

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v2, v1, Lcom/parrot/engine3d/GLProjection;->mLeft:F

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v3, v1, Lcom/parrot/engine3d/GLProjection;->mRight:F

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v4, v1, Lcom/parrot/engine3d/GLProjection;->mBottom:F

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v5, v1, Lcom/parrot/engine3d/GLProjection;->mTop:F

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v6, v1, Lcom/parrot/engine3d/GLProjection;->mNear:F

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v7, v1, Lcom/parrot/engine3d/GLProjection;->mFar:F

    move v1, v11

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mVpMatrix:[F

    invoke-static {v0, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mViewMatrix:[F

    move v1, v11

    move v3, v11

    move v5, v11

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 185
    return-void

    .end local v8    # "max":I
    .end local v9    # "maxWithRatio":I
    .restart local p1    # "width":I
    :cond_0
    move p1, p2

    .line 178
    goto :goto_0
.end method

.method public onContextCreated()V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 109
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 110
    const/16 v0, 0x207

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 111
    invoke-static {v11}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 114
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 115
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 118
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

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mViewMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v2, v2, Lcom/parrot/engine3d/GLCamera;->mPosX:F

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v3, v3, Lcom/parrot/engine3d/GLCamera;->mPosY:F

    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v4, v4, Lcom/parrot/engine3d/GLCamera;->mPosZ:F

    iget-object v5, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v5, v5, Lcom/parrot/engine3d/GLCamera;->mLookAtX:F

    iget-object v6, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v6, v6, Lcom/parrot/engine3d/GLCamera;->mLookAtY:F

    iget-object v7, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v7, v7, Lcom/parrot/engine3d/GLCamera;->mLookAtZ:F

    iget-object v8, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v8, v8, Lcom/parrot/engine3d/GLCamera;->mUpX:F

    iget-object v9, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v9, v9, Lcom/parrot/engine3d/GLCamera;->mUpY:F

    iget-object v10, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v10, v10, Lcom/parrot/engine3d/GLCamera;->mUpZ:F

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 125
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->restoreBitmaps()V

    .line 127
    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->initShaders()V

    .line 128
    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->initObjectsOpenGLResources()V

    .line 129
    iput-boolean v11, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlContextCreated:Z

    .line 130
    return-void
.end method

.method public onContextReleased()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->objectsToResourcesList()Ljava/util/List;

    move-result-object v2

    .line 207
    .local v2, "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-eqz v4, :cond_1

    .line 211
    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    if-eqz v4, :cond_2

    .line 214
    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    const/4 v0, 0x0

    .local v0, "it":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 217
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/engine3d/IGLResources;

    .line 218
    .local v1, "resources":Lcom/parrot/engine3d/IGLResources;
    invoke-interface {v1, v5}, Lcom/parrot/engine3d/IGLResources;->markResourcesCreated(Z)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "resources":Lcom/parrot/engine3d/IGLResources;
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->clear()V

    .line 223
    iput-boolean v5, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlContextCreated:Z

    .line 224
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
    .line 359
    iput-object p1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    .line 360
    iput-object p2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 361
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->computeObjectsPosition()V

    .line 362
    return-void
.end method

.method public removeDrone()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v1, Lcom/parrot/engine3d/GLResourcesDeletor;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-direct {v1, v2}, Lcom/parrot/engine3d/GLResourcesDeletor;-><init>(Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 321
    monitor-enter p0

    .line 322
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    .line 323
    monitor-exit p0

    .line 325
    :cond_0
    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeHome()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v1, Lcom/parrot/engine3d/GLResourcesDeletor;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    invoke-direct {v1, v2}, Lcom/parrot/engine3d/GLResourcesDeletor;-><init>(Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 339
    monitor-enter p0

    .line 340
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    .line 341
    monitor-exit p0

    .line 343
    :cond_0
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeUser()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v1, Lcom/parrot/engine3d/GLResourcesDeletor;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    invoke-direct {v1, v2}, Lcom/parrot/engine3d/GLResourcesDeletor;-><init>(Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 330
    monitor-enter p0

    .line 331
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    .line 332
    monitor-exit p0

    .line 334
    :cond_0
    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized render()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mViewMatrix:[F

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjectionMatrix:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/map/gl/GLUser;->draw([F[F[F)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mViewMatrix:[F

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjectionMatrix:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/map/gl/GLHome;->draw([F[F[F)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mViewMatrix:[F

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mProjectionMatrix:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/map/gl/GLDrone;->draw([F[F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_2
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restoreBitmaps()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/gl/GLUser;->getTextureResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLUser;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/gl/GLDrone;->getTextureResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    :cond_1
    return-void
.end method

.method public setCenterOn(I)V
    .locals 0
    .param p1, "centerOn"    # I

    .prologue
    .line 422
    iput p1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mCenterOn:I

    .line 423
    return-void
.end method

.method public setMinified(Z)V
    .locals 0
    .param p1, "isMinified"    # Z

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    .line 419
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
    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    move-result v8

    .line 381
    .local v8, "positionUpdated":Z
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    double-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->updateRelativeAltitude(F)Z

    move-result v9

    .line 382
    .local v9, "relativeAltitudeUpdated":Z
    if-nez v8, :cond_0

    if-eqz v9, :cond_1

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->getCameraNormalizedTilt()F

    move-result v4

    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->getCameraZoomFactor()F

    move-result v5

    iget-boolean v6, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->isCenteredOnDrone()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/freeflight/map/gl/GLDrone;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V

    .line 384
    const/4 v0, 0x1

    .line 387
    .end local v8    # "positionUpdated":Z
    .end local v9    # "relativeAltitudeUpdated":Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateHomePosition(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z
    .locals 6
    .param p1, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 284
    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/location/LocationUtils;->isValidLocation(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/gl/GLHome;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    move-result v0

    .line 286
    .local v0, "positionUpdated":Z
    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mHome:Lcom/parrot/freeflight/map/gl/GLHome;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    iget-boolean v5, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/parrot/freeflight/map/gl/GLHome;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;Z)V

    .line 288
    const/4 v1, 0x1

    .line 291
    .end local v0    # "positionUpdated":Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUserPosition(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z
    .locals 7
    .param p1, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/location/LocationUtils;->isValidLocation(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    move-result v6

    .line 242
    .local v6, "positionUpdated":Z
    if-eqz v6, :cond_0

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    iget-boolean v4, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mIsMinified:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->isCenteredOnUser()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/map/gl/GLUser;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;ZZ)V

    .line 244
    const/4 v0, 0x1

    .line 247
    .end local v6    # "positionUpdated":Z
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateUserRotation(FZ)Z
    .locals 4
    .param p1, "userRotation"    # F
    .param p2, "isDroneInScope"    # Z

    .prologue
    .line 251
    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/gl/GLUser;->isDroneInScope()Z

    move-result v1

    if-eq p2, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    .line 254
    .local v0, "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateYaw(D)Z

    .line 255
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->removeUser()V

    .line 256
    invoke-virtual {p0, v0, p2}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->addUser(Lcom/parrot/freeflight/core/model/DroneModel$Position;Z)V

    .line 257
    const/4 v1, 0x1

    .line 262
    .end local v0    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :goto_0
    return v1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->mUser:Lcom/parrot/freeflight/map/gl/GLUser;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/map/gl/GLUser;->updateUserRotation(F)Z

    move-result v1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
