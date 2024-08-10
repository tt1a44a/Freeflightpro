.class public Lcom/parrot/freeflight/tapmode/TapModeGlScene;
.super Lcom/parrot/engine3d/Scene;
.source "TapModeGlScene.java"

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

.field private mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;
    .annotation build Landroid/support/annotation/Nullable;
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

.field private mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    .annotation build Landroid/support/annotation/Nullable;
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

.field private mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;
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
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/parrot/engine3d/Scene;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    .line 79
    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlContextCreated:Z

    .line 89
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 100
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    .line 102
    iput-object p2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    .line 103
    iput p3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDensityFactor:F

    .line 104
    iput-boolean p5, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMinified:Z

    .line 106
    new-instance v0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p4}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/GLExtensionsSupport;)V

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    .line 108
    new-instance v0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristicsFactory;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 110
    return-void
.end method

.method private addTapModePoint(Lcom/parrot/freeflight/tapmode/TapModePoint;FLandroid/graphics/Bitmap;II)Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    .locals 10
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/tapmode/TapModePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scale"    # F
    .param p3, "centerTexture"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "frontColor"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p5, "pointTYpe"    # I

    .prologue
    .line 302
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinAltitude()F

    move-result v8

    .line 303
    .local v8, "wpMinAltitude":F
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v9

    .line 304
    .local v9, "wpMaxAltitude":F
    new-instance v0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/tapmode/TapModePoint;FLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;IIFF)V

    .line 305
    .local v0, "point":Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->addLine(Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)V

    .line 308
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlContextCreated:Z

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/engine3d/GLResourcesCreator;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 311
    :cond_1
    return-object v0
.end method

.method private computePoiPosition()V
    .locals 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;)V

    .line 445
    :cond_0
    return-void
.end method

.method private getCameraNormalizedTilt()F
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

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
    .line 474
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget v0, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 475
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

    .line 474
    .end local v0    # "zoom":F
    :cond_0
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_0
.end method

.method private initObjectsOpenGLResources()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->createGLResources(Landroid/content/res/Resources;)Z

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->createGLResources(Landroid/content/res/Resources;)Z

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->setShader(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/GLShader;)V

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->createGLResources(Landroid/content/res/Resources;)Z

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->createGLResources(Landroid/content/res/Resources;)Z

    .line 189
    :cond_3
    return-void
.end method

.method private initShaders()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f10001c

    const v2, 0x7f100023

    invoke-static {v0, v1, v2}, Lcom/parrot/engine3d/GLShaderFactory;->load(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/GLShader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aTexCoord"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uTextureSampler"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uFrontColor"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uBackColor"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100014

    const v2, 0x7f100013

    invoke-static {v0, v1, v2}, Lcom/parrot/engine3d/GLShaderFactory;->load(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/GLShader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aColor"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    const-string/jumbo v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 164
    :cond_1
    return-void
.end method

.method private isCenteredOnDrone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 520
    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCenterOn:I

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
    .line 524
    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCenterOn:I

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
    .locals 2
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
    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v0, "resourcesList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_2
    return-object v0
.end method


# virtual methods
.method public addDrone(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 18
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-nez v2, :cond_1

    .line 367
    const/high16 v2, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDensityFactor:F

    mul-float v9, v2, v3

    .line 368
    .local v9, "droneSize":F
    monitor-enter p0

    .line 369
    :try_start_0
    new-instance v2, Lcom/parrot/freeflight/map/gl/GLDrone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mObjectShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v6

    double-to-float v6, v6

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v10

    const/4 v11, 0x1

    invoke-direct/range {v2 .. v11}, Lcom/parrot/freeflight/map/gl/GLDrone;-><init>(Landroid/content/Context;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/core/model/DroneModel$Position;FILcom/parrot/freeflight/flightplan/GLBitmapCache;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    .line 371
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->getCameraNormalizedTilt()F

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->getCameraZoomFactor()F

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMinified:Z

    move/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->isCenteredOnDrone()Z

    move-result v17

    invoke-virtual/range {v10 .. v17}, Lcom/parrot/freeflight/map/gl/GLDrone;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v2, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->addLine(Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)V

    .line 380
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlContextCreated:Z

    if-eqz v2, :cond_1

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v3, Lcom/parrot/engine3d/GLResourcesCreator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-direct {v3, v4, v5}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v2, v3}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 384
    .end local v9    # "droneSize":F
    :cond_1
    return-void

    .line 371
    .restart local v9    # "droneSize":F
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 376
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v2, :cond_0

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->addLine(Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)V

    goto :goto_0
.end method

.method public addLine(Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)V
    .locals 6
    .param p1, "glDrone"    # Lcom/parrot/freeflight/map/gl/GLDrone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "glTapModePoint"    # Lcom/parrot/freeflight/tapmode/GLTapModePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 354
    new-instance v0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLineShader:Lcom/parrot/engine3d/GLShader;

    iget v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDensityFactor:F

    .line 355
    invoke-virtual {p2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getWayPointFrontColor()[F

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/tapmode/GLTapModeLine;-><init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;F[F)V

    .line 357
    .local v0, "wayPointsLine":Lcom/parrot/freeflight/tapmode/GLTapModeLine;
    monitor-enter p0

    .line 358
    :try_start_0
    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    .line 359
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-boolean v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlContextCreated:Z

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/engine3d/GLResourcesCreator;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Lcom/parrot/engine3d/GLResourcesCreator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 363
    :cond_0
    return-void

    .line 359
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addPoi(Lcom/parrot/freeflight/tapmode/TapModePoint;)V
    .locals 6
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/tapmode/TapModePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v1, 0x7f070517

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 265
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/high16 v0, 0x42b40000    # 90.0f

    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDensityFactor:F

    mul-float v2, v0, v1

    .line 266
    .local v2, "pointSize":F
    const v4, 0x7f05011f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->addTapModePoint(Lcom/parrot/freeflight/tapmode/TapModePoint;FLandroid/graphics/Bitmap;II)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .line 267
    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->computePoiPosition()V

    goto :goto_0
.end method

.method public addWayPoint(Lcom/parrot/freeflight/tapmode/TapModePoint;)V
    .locals 6
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/tapmode/TapModePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 295
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v1, 0x7f070518

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 296
    .local v3, "centerTexture":Landroid/graphics/Bitmap;
    const/high16 v0, 0x42b40000    # 90.0f

    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDensityFactor:F

    mul-float v2, v0, v1

    .line 297
    .local v2, "pointSize":F
    const v4, 0x7f050120

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->addTapModePoint(Lcom/parrot/freeflight/tapmode/TapModePoint;FLandroid/graphics/Bitmap;II)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .line 298
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->computeWayPointPosition()V

    .line 299
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    monitor-enter p0

    .line 485
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    .line 488
    monitor-exit p0

    .line 490
    :cond_1
    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public computeObjectsPosition()V
    .locals 8

    .prologue
    .line 448
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->computeWayPointPosition()V

    .line 450
    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->computePoiPosition()V

    .line 451
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->getCameraNormalizedTilt()F

    move-result v4

    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->getCameraZoomFactor()F

    move-result v5

    iget-boolean v6, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMinified:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->isCenteredOnDrone()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/freeflight/map/gl/GLDrone;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V

    .line 455
    :cond_0
    return-void
.end method

.method public computeWayPointPosition()V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;)V

    .line 439
    :cond_0
    return-void
.end method

.method public getLine()Lcom/parrot/freeflight/tapmode/GLTapModeLine;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    return-object v0
.end method

.method public getPoi()Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    return-object v0
.end method

.method public getUnitConverter()Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    return-object v0
.end method

.method public getWayPoint()Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    return-object v0
.end method

.method public hasPoi()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPoiDragging()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->isDragging()Z

    move-result v0

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

    .line 194
    invoke-super {p0, p1, p2}, Lcom/parrot/engine3d/Scene;->onContextChanged(II)V

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWidth2:I

    iget v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mHeight2:I

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->updateScreenSize(II)V

    .line 197
    invoke-static {v11, v11, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 200
    int-to-float v0, p1

    int-to-float v1, p2

    div-float v10, v0, v1

    .line 201
    .local v10, "ratio":F
    if-le p1, p2, :cond_0

    .end local p1    # "width":I
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v10

    div-float/2addr v0, v1

    float-to-int v8, v0

    .line 202
    .local v8, "max":I
    int-to-float v0, v8

    mul-float/2addr v0, v10

    float-to-int v9, v0

    .line 203
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

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjectionMatrix:[F

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v2, v1, Lcom/parrot/engine3d/GLProjection;->mLeft:F

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v3, v1, Lcom/parrot/engine3d/GLProjection;->mRight:F

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v4, v1, Lcom/parrot/engine3d/GLProjection;->mBottom:F

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v5, v1, Lcom/parrot/engine3d/GLProjection;->mTop:F

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v6, v1, Lcom/parrot/engine3d/GLProjection;->mNear:F

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjection:Lcom/parrot/engine3d/GLProjection;

    iget v7, v1, Lcom/parrot/engine3d/GLProjection;->mFar:F

    move v1, v11

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mVpMatrix:[F

    invoke-static {v0, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mViewMatrix:[F

    move v1, v11

    move v3, v11

    move v5, v11

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 208
    return-void

    .end local v8    # "max":I
    .end local v9    # "maxWithRatio":I
    .restart local p1    # "width":I
    :cond_0
    move p1, p2

    .line 201
    goto :goto_0
.end method

.method public onContextCreated()V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 119
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 120
    const/16 v0, 0x207

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 121
    invoke-static {v11}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 124
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 125
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 128
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

    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mViewMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v2, v2, Lcom/parrot/engine3d/GLCamera;->mPosX:F

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v3, v3, Lcom/parrot/engine3d/GLCamera;->mPosY:F

    iget-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v4, v4, Lcom/parrot/engine3d/GLCamera;->mPosZ:F

    iget-object v5, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v5, v5, Lcom/parrot/engine3d/GLCamera;->mLookAtX:F

    iget-object v6, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v6, v6, Lcom/parrot/engine3d/GLCamera;->mLookAtY:F

    iget-object v7, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v7, v7, Lcom/parrot/engine3d/GLCamera;->mLookAtZ:F

    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v8, v8, Lcom/parrot/engine3d/GLCamera;->mUpX:F

    iget-object v9, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v9, v9, Lcom/parrot/engine3d/GLCamera;->mUpY:F

    iget-object v10, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCamera:Lcom/parrot/engine3d/GLCamera;

    iget v10, v10, Lcom/parrot/engine3d/GLCamera;->mUpZ:F

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 135
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->restoreBitmaps()V

    .line 137
    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->initShaders()V

    .line 138
    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->initObjectsOpenGLResources()V

    .line 139
    iput-boolean v11, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlContextCreated:Z

    .line 140
    return-void
.end method

.method public onContextReleased()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 238
    iget-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    if-eqz v4, :cond_2

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->objectsToResourcesList()Ljava/util/List;

    move-result-object v2

    .line 240
    .local v2, "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    const/4 v0, 0x0

    .local v0, "it":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 244
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/engine3d/IGLResources;

    .line 245
    .local v1, "resources":Lcom/parrot/engine3d/IGLResources;
    invoke-interface {v1, v5}, Lcom/parrot/engine3d/IGLResources;->markResourcesCreated(Z)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "it":I
    .end local v1    # "resources":Lcom/parrot/engine3d/IGLResources;
    .end local v2    # "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/engine3d/IGLResources;>;"
    .end local v3    # "size":I
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->clear()V

    .line 251
    iput-boolean v5, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlContextCreated:Z

    .line 252
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
    .line 415
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    .line 416
    iput-object p2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 417
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->computeObjectsPosition()V

    .line 418
    return-void
.end method

.method public onPoiMoved()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->computePoiPosition()V

    .line 292
    return-void
.end method

.method public onWayPointMoved()V
    .locals 0

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->computeWayPointPosition()V

    .line 316
    return-void
.end method

.method public removeDrone()V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v1, Lcom/parrot/engine3d/GLResourcesDeletor;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-direct {v1, v2}, Lcom/parrot/engine3d/GLResourcesDeletor;-><init>(Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 389
    monitor-enter p0

    .line 390
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    .line 391
    monitor-exit p0

    .line 393
    :cond_0
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePoi()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v1, Lcom/parrot/engine3d/GLResourcesDeletor;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-direct {v1, v2}, Lcom/parrot/engine3d/GLResourcesDeletor;-><init>(Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 273
    monitor-enter p0

    .line 274
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .line 275
    monitor-exit p0

    .line 277
    :cond_0
    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWayPoint()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v1, Lcom/parrot/engine3d/GLResourcesDeletor;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-direct {v1, v2}, Lcom/parrot/engine3d/GLResourcesDeletor;-><init>(Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 347
    monitor-enter p0

    .line 348
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .line 349
    monitor-exit p0

    .line 351
    :cond_0
    return-void

    .line 349
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
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->updateWayPoints(Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)V

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mViewMatrix:[F

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjectionMatrix:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->draw([F[F[F)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->updateWayPoints(Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)V

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mLine:Lcom/parrot/freeflight/tapmode/GLTapModeLine;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mViewMatrix:[F

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjectionMatrix:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->draw([F[F[F)V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mViewMatrix:[F

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjectionMatrix:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->draw([F[F[F)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mVpMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mViewMatrix:[F

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mProjectionMatrix:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->draw([F[F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_3
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restoreBitmaps()V
    .locals 5

    .prologue
    .line 400
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v3, 0x7f070518

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    .local v0, "centerTexture":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->updateBitmaps(Landroid/graphics/Bitmap;)V

    .line 404
    .end local v0    # "centerTexture":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    const v3, 0x7f070517

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 406
    .local v1, "poiBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->updateBitmaps(Landroid/graphics/Bitmap;)V

    .line 408
    .end local v1    # "poiBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mBitmapCache:Lcom/parrot/freeflight/flightplan/GLBitmapCache;

    iget-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-virtual {v4}, Lcom/parrot/freeflight/map/gl/GLDrone;->getTextureResId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/map/gl/GLDrone;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 411
    :cond_2
    return-void
.end method

.method public setCenterOn(I)V
    .locals 0
    .param p1, "centerOn"    # I

    .prologue
    .line 516
    iput p1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mCenterOn:I

    .line 517
    return-void
.end method

.method public setMinified(Z)V
    .locals 0
    .param p1, "minified"    # Z

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMinified:Z

    .line 513
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
    .line 458
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    move-result v8

    .line 460
    .local v8, "positionUpdated":Z
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    double-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->updateRelativeAltitude(F)Z

    move-result v9

    .line 461
    .local v9, "relativeAltitudeUpdated":Z
    if-nez v8, :cond_0

    if-eqz v9, :cond_1

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mDrone:Lcom/parrot/freeflight/map/gl/GLDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapProjection:Lcom/parrot/freeflight/map/IProjection;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMapCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mUnitConverter:Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->getCameraNormalizedTilt()F

    move-result v4

    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->getCameraZoomFactor()F

    move-result v5

    iget-boolean v6, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mMinified:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->isCenteredOnDrone()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/freeflight/map/gl/GLDrone;->computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V

    .line 463
    const/4 v0, 0x1

    .line 466
    .end local v8    # "positionUpdated":Z
    .end local v9    # "relativeAltitudeUpdated":Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePoiAltitude(F)V
    .locals 4
    .param p1, "altitude"    # F

    .prologue
    .line 280
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    float-to-int v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->updatePrimaryText(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mPoi:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v0

    .line 284
    .local v0, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->isCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/engine3d/GLResourcesUpdator;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Lcom/parrot/engine3d/GLResourcesUpdator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 288
    .end local v0    # "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    :cond_0
    return-void
.end method

.method public updateWayPointAltitude(F)V
    .locals 1
    .param p1, "altitude"    # F

    .prologue
    .line 319
    float-to-int v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->updateWayPointGraphics(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public updateWayPointGraphics(Ljava/lang/String;)V
    .locals 4
    .param p1, "primaryText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 329
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setColorFromAltitude()V

    .line 331
    if-eqz p1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->updatePrimaryText(Ljava/lang/String;)V

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v0

    .line 338
    .local v0, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->isCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mGlThreadInterface:Lcom/parrot/engine3d/GLThreadInterface;

    new-instance v2, Lcom/parrot/engine3d/GLResourcesUpdator;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Lcom/parrot/engine3d/GLResourcesUpdator;-><init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V

    invoke-interface {v1, v2}, Lcom/parrot/engine3d/GLThreadInterface;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 342
    .end local v0    # "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    :cond_0
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->mWayPoint:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->generatePrimaryText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->updatePrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method
