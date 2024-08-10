.class public Lcom/parrot/freeflight/map/gl/GLHome;
.super Lcom/parrot/engine3d/objects/GLRect3D;
.source "GLHome.java"


# instance fields
.field protected final mLineEndPosition:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mLineStartPosition:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRadiusPadding:F

.field private final mTextureResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/flightplan/GLBitmapCache;F)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "bitmapCache"    # Lcom/parrot/freeflight/flightplan/GLBitmapCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "scale"    # F

    .prologue
    const/4 v3, 0x3

    .line 41
    sget-object v0, Lcom/parrot/freeflight/map/gl/GLHome;->SQUARE_VERTICES:[F

    sget-object v1, Lcom/parrot/freeflight/map/gl/GLHome;->RECT_INDICES:[S

    invoke-direct {p0, v0, v1}, Lcom/parrot/engine3d/objects/GLRect3D;-><init>([F[S)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mRadiusPadding:F

    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/map/gl/GLHome;->textureResId()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mTextureResId:I

    .line 44
    new-instance v0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    iget v1, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mTextureResId:I

    invoke-virtual {p4, v1}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/gl/GLHome;->setTexture(Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 45
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/map/gl/GLHome;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 48
    :cond_0
    invoke-virtual {p0, p5}, Lcom/parrot/freeflight/map/gl/GLHome;->setScale(F)V

    .line 50
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineStartPosition:[F

    .line 51
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineEndPosition:[F

    .line 53
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->clone()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 54
    return-void
.end method

.method private textureResId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 89
    const v0, 0x7f07029b

    return v0
.end method


# virtual methods
.method public computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;Z)V
    .locals 20
    .param p1, "mapProjection"    # Lcom/parrot/freeflight/map/IProjection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mapCameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "unitConverter"    # Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isMinified"    # Z

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/map/gl/GLHome;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v14}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 58
    .local v9, "homeLocation":Landroid/location/Location;
    invoke-static {v9}, Lcom/parrot/freeflight/location/LocationUtils;->locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    .line 59
    .local v8, "homeLatLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v8, :cond_1

    .line 61
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v13

    .line 62
    .local v13, "screenLocation":Landroid/graphics/Point;
    iget v11, v13, Landroid/graphics/Point;->x:I

    .line 63
    .local v11, "positionX":I
    iget v12, v13, Landroid/graphics/Point;->y:I

    .line 64
    .local v12, "positionY":I
    if-eqz p4, :cond_0

    .line 65
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->getWidth()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->getHeight()F

    move-result v15

    float-to-int v15, v15

    invoke-direct {v5, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 66
    .local v5, "centerLocation":Landroid/graphics/Point;
    iget v4, v5, Landroid/graphics/Point;->x:I

    .line 67
    .local v4, "center":I
    int-to-float v14, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/map/gl/GLHome;->mRadiusPadding:F

    sub-float/2addr v14, v15

    float-to-int v10, v14

    .line 68
    .local v10, "maxRadius":I
    invoke-static {v5, v13}, Lcom/parrot/freeflight/location/LocationUtils;->getAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v2

    .line 69
    .local v2, "angle":D
    invoke-static {v5, v13}, Lcom/parrot/freeflight/location/LocationUtils;->getDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v6

    .line 70
    .local v6, "distance":D
    int-to-double v14, v10

    cmpl-double v14, v6, v14

    if-lez v14, :cond_0

    .line 72
    int-to-double v14, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v11, v14

    .line 73
    int-to-double v14, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v12, v14

    .line 76
    .end local v2    # "angle":D
    .end local v4    # "center":I
    .end local v5    # "centerLocation":Landroid/graphics/Point;
    .end local v6    # "distance":D
    .end local v10    # "maxRadius":I
    :cond_0
    int-to-float v14, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v14

    int-to-float v15, v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/parrot/freeflight/map/gl/GLHome;->setPosition(FF)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLHome;->getPosX()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLHome;->getPosY()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLHome;->getPosZ()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/parrot/freeflight/map/gl/GLHome;->setLineStartPosition(FFF)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLHome;->getPosX()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLHome;->getPosY()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLHome;->getPosZ()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/parrot/freeflight/map/gl/GLHome;->setLineEndPosition(FFF)V

    .line 80
    .end local v11    # "positionX":I
    .end local v12    # "positionY":I
    .end local v13    # "screenLocation":Landroid/graphics/Point;
    :cond_1
    return-void
.end method

.method public getLineEndX()F
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineEndPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndY()F
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineEndPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndZ()F
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineEndPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartX()F
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineStartPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartY()F
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineStartPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartZ()F
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineStartPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method public getTextureResId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 84
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mTextureResId:I

    return v0
.end method

.method public setLineEndPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineEndPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineEndPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineEndPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 117
    return-void
.end method

.method public setLineStartPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineStartPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineStartPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mLineStartPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 111
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    .line 99
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLHome;->mPosZ:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parrot/freeflight/map/gl/GLHome;->setPosition(FFFZ)V

    .line 100
    return-void
.end method

.method public setPosition(FFF)V
    .locals 0
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLRect3D;->setPosition(FFF)V

    .line 105
    return-void
.end method
