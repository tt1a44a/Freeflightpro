.class public Lcom/parrot/freeflight/map/gl/GLUser;
.super Lcom/parrot/engine3d/objects/GLRect3D;
.source "GLUser.java"


# static fields
.field private static final LOW_PASS_FILTER_ALPHA:F = 1.0f


# instance fields
.field private mCameraBearing:F

.field private mCameraTilt:F

.field private mIsDroneInScope:Z

.field protected final mLineEndPosition:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mLineStartPosition:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOrientation:F

.field private final mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRadiusPadding:F

.field private mTextureResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/flightplan/GLBitmapCache;FZ)V
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
    .param p4, "glBitmapCache"    # Lcom/parrot/freeflight/flightplan/GLBitmapCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "scale"    # F
    .param p6, "isDroneInScope"    # Z

    .prologue
    const/4 v3, 0x3

    .line 47
    sget-object v0, Lcom/parrot/freeflight/map/gl/GLUser;->SQUARE_VERTICES:[F

    sget-object v1, Lcom/parrot/freeflight/map/gl/GLUser;->RECT_INDICES:[S

    invoke-direct {p0, v0, v1}, Lcom/parrot/engine3d/objects/GLRect3D;-><init>([F[S)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mRadiusPadding:F

    .line 49
    iput-boolean p6, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mIsDroneInScope:Z

    .line 50
    invoke-direct {p0, p6}, Lcom/parrot/freeflight/map/gl/GLUser;->textureResId(Z)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mTextureResId:I

    .line 51
    new-instance v0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    iget v1, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mTextureResId:I

    invoke-virtual {p4, v1}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/gl/GLUser;->setTexture(Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 52
    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/map/gl/GLUser;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 55
    :cond_0
    invoke-virtual {p0, p5}, Lcom/parrot/freeflight/map/gl/GLUser;->setScale(F)V

    .line 57
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineStartPosition:[F

    .line 58
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineEndPosition:[F

    .line 60
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->clone()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 61
    return-void
.end method

.method private applyLowPassFilter(FF)F
    .locals 2
    .param p1, "input"    # F
    .param p2, "output"    # F

    .prologue
    .line 187
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method private isCentered()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 95
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosX()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static round(FI)F
    .locals 6
    .param p0, "value"    # F
    .param p1, "precision"    # I

    .prologue
    .line 191
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    .line 192
    .local v0, "scale":I
    int-to-float v1, v0

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method private textureResId(Z)I
    .locals 1
    .param p1, "droneInAngle"    # Z
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    const v0, 0x7f07029d

    .line 108
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f07029c

    goto :goto_0
.end method


# virtual methods
.method public computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;ZZ)V
    .locals 24
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
    .param p5, "mustBeCentered"    # Z

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/gl/GLUser;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v16

    .line 66
    .local v16, "userLocation":Landroid/location/Location;
    invoke-static/range {v16 .. v16}, Lcom/parrot/freeflight/location/LocationUtils;->locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v15

    .line 67
    .local v15, "userLatLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v15, :cond_2

    .line 68
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v14

    .line 69
    .local v14, "screenLocation":Landroid/graphics/Point;
    iget v12, v14, Landroid/graphics/Point;->x:I

    .line 70
    .local v12, "positionX":I
    iget v13, v14, Landroid/graphics/Point;->y:I

    .line 71
    .local v13, "positionY":I
    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    .line 72
    .local v6, "bearing":F
    if-eqz p4, :cond_1

    .line 73
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->getWidth()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->getHeight()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 74
    .local v8, "centerLocation":Landroid/graphics/Point;
    iget v7, v8, Landroid/graphics/Point;->x:I

    .line 75
    .local v7, "center":I
    int-to-float v0, v7

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/map/gl/GLUser;->mRadiusPadding:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v9, v0

    .line 76
    .local v9, "maxRadius":I
    invoke-static {v8, v14}, Lcom/parrot/freeflight/location/LocationUtils;->getAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v4

    .line 77
    .local v4, "angle":D
    invoke-static {v8, v14}, Lcom/parrot/freeflight/location/LocationUtils;->getDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v10

    .line 78
    .local v10, "distance":D
    int-to-double v0, v9

    move-wide/from16 v18, v0

    cmpl-double v17, v10, v18

    if-lez v17, :cond_0

    .line 80
    int-to-double v0, v7

    move-wide/from16 v18, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    int-to-double v0, v9

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v12, v0

    .line 81
    int-to-double v0, v7

    move-wide/from16 v18, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    int-to-double v0, v9

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v13, v0

    .line 83
    :cond_0
    if-eqz p5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLUser;->isCentered()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/gl/GLUser;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 87
    .end local v4    # "angle":D
    .end local v7    # "center":I
    .end local v8    # "centerLocation":Landroid/graphics/Point;
    .end local v9    # "maxRadius":I
    .end local v10    # "distance":D
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/parrot/freeflight/map/gl/GLUser;->setCameraRotationInfo(FF)V

    .line 88
    int-to-float v0, v12

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v17

    int-to-float v0, v13

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/gl/GLUser;->setPosition(FF)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosX()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosY()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosZ()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/map/gl/GLUser;->setLineStartPosition(FFF)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosX()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosY()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLUser;->getPosZ()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/map/gl/GLUser;->setLineEndPosition(FFF)V

    .line 92
    .end local v6    # "bearing":F
    .end local v12    # "positionX":I
    .end local v13    # "positionY":I
    .end local v14    # "screenLocation":Landroid/graphics/Point;
    :cond_2
    return-void
.end method

.method public getLineEndX()F
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineEndPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndY()F
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineEndPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndZ()F
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineEndPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartX()F
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineStartPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartY()F
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineStartPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartZ()F
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineStartPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method public getTextureResId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 100
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mTextureResId:I

    return v0
.end method

.method public isDroneInScope()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mIsDroneInScope:Z

    return v0
.end method

.method public setCameraRotationInfo(FF)V
    .locals 0
    .param p1, "cameraTilt"    # F
    .param p2, "cameraBearing"    # F

    .prologue
    .line 112
    iput p1, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mCameraTilt:F

    .line 113
    iput p2, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mCameraBearing:F

    .line 114
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLUser;->updateObjectsRotations()V

    .line 115
    return-void
.end method

.method public setLineEndPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineEndPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineEndPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineEndPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 146
    return-void
.end method

.method public setLineStartPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineStartPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineStartPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mLineStartPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 140
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    .line 128
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mPosZ:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parrot/freeflight/map/gl/GLUser;->setPosition(FFFZ)V

    .line 129
    return-void
.end method

.method public setPosition(FFF)V
    .locals 0
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLRect3D;->setPosition(FFF)V

    .line 134
    return-void
.end method

.method public updateObjectsRotations()V
    .locals 6

    .prologue
    .line 118
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mCameraTilt:F

    neg-float v0, v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mCameraBearing:F

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v4

    double-to-float v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/map/gl/GLUser;->setRotation(FFF)V

    .line 119
    return-void
.end method

.method public updateUserRotation(F)Z
    .locals 4
    .param p1, "userRotation"    # F

    .prologue
    .line 177
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mOrientation:F

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/map/gl/GLUser;->applyLowPassFilter(FF)F

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/gl/GLUser;->round(FI)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mOrientation:F

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v0

    iget v2, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mOrientation:F

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    iget v1, p0, Lcom/parrot/freeflight/map/gl/GLUser;->mOrientation:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateYaw(D)Z

    .line 180
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLUser;->updateObjectsRotations()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
