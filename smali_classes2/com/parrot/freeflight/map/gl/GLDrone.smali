.class public Lcom/parrot/freeflight/map/gl/GLDrone;
.super Lcom/parrot/engine3d/objects/GLRect3D;
.source "GLDrone.java"


# instance fields
.field private mCameraBearing:F

.field private mCameraTilt:F

.field protected final mLineEndPosition:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mLineStartPosition:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMaxAltitude:F

.field private final mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRadiusPadding:F

.field private mRelativeAltitude:F

.field private final mTextureResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mYCorrection:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/core/model/DroneModel$Position;FILcom/parrot/freeflight/flightplan/GLBitmapCache;FFZ)V
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
    .param p4, "relativeAltitude"    # F
    .param p5, "type"    # I
    .param p6, "bitmapCache"    # Lcom/parrot/freeflight/flightplan/GLBitmapCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "scale"    # F
    .param p8, "maxAltitude"    # F
    .param p9, "isConnected"    # Z

    .prologue
    const/4 v3, 0x3

    .line 47
    sget-object v0, Lcom/parrot/freeflight/map/gl/GLDrone;->SQUARE_VERTICES:[F

    sget-object v1, Lcom/parrot/freeflight/map/gl/GLDrone;->RECT_INDICES:[S

    invoke-direct {p0, v0, v1}, Lcom/parrot/engine3d/objects/GLRect3D;-><init>([F[S)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mRadiusPadding:F

    .line 49
    invoke-direct {p0, p5, p9}, Lcom/parrot/freeflight/map/gl/GLDrone;->textureResIdFromProductType(IZ)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mTextureResId:I

    .line 50
    invoke-virtual {p0, p8}, Lcom/parrot/freeflight/map/gl/GLDrone;->setMaxAltitude(F)V

    .line 51
    new-instance v0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    iget v1, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mTextureResId:I

    invoke-virtual {p6, v1}, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->load(I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/gl/GLDrone;->setTexture(Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 52
    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/map/gl/GLDrone;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 55
    :cond_0
    invoke-virtual {p0, p7}, Lcom/parrot/freeflight/map/gl/GLDrone;->setScale(F)V

    .line 57
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineStartPosition:[F

    .line 58
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineEndPosition:[F

    .line 60
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->clone()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 61
    iput p4, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mRelativeAltitude:F

    .line 62
    return-void
.end method

.method private isCentered()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 105
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosX()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosY()F

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

.method private textureResIdFromProductType(IZ)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "connected"    # Z
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 124
    if-eqz p2, :cond_3

    const v0, 0x7f070403

    :goto_0
    return v0

    .line 118
    :pswitch_0
    if-eqz p2, :cond_0

    const v0, 0x7f070401

    goto :goto_0

    :cond_0
    const v0, 0x7f070402

    goto :goto_0

    .line 120
    :pswitch_1
    if-eqz p2, :cond_1

    const v0, 0x7f070406

    goto :goto_0

    :cond_1
    const v0, 0x7f070407

    goto :goto_0

    .line 122
    :pswitch_2
    if-eqz p2, :cond_2

    const v0, 0x7f07040e

    goto :goto_0

    :cond_2
    const v0, 0x7f07040f

    goto :goto_0

    .line 124
    :cond_3
    const v0, 0x7f070404

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FFZZ)V
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
    .param p4, "normalizedTilt"    # F
    .param p5, "zoomFactor"    # F
    .param p6, "isMinified"    # Z
    .param p7, "mustBeCentered"    # Z

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/gl/GLDrone;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v12

    .line 67
    .local v12, "droneLocation":Landroid/location/Location;
    invoke-static {v12}, Lcom/parrot/freeflight/location/LocationUtils;->locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    .line 68
    .local v9, "droneLatLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v9, :cond_2

    .line 69
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v17

    .line 70
    .local v17, "screenLocation":Landroid/graphics/Point;
    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/Point;->x:I

    .line 71
    .local v15, "positionX":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    .line 72
    .local v16, "positionY":I
    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    .line 73
    .local v6, "bearing":F
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->getWidth()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->getHeight()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 74
    .local v8, "centerLocation":Landroid/graphics/Point;
    if-eqz p6, :cond_3

    .line 75
    iget v7, v8, Landroid/graphics/Point;->x:I

    .line 76
    .local v7, "center":I
    int-to-float v0, v7

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/map/gl/GLDrone;->mRadiusPadding:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v13, v0

    .line 77
    .local v13, "maxRadius":I
    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/parrot/freeflight/location/LocationUtils;->getAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v4

    .line 78
    .local v4, "angle":D
    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/parrot/freeflight/location/LocationUtils;->getDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v10

    .line 79
    .local v10, "distance":D
    int-to-double v0, v13

    move-wide/from16 v18, v0

    cmpl-double v18, v10, v18

    if-lez v18, :cond_0

    .line 81
    int-to-double v0, v7

    move-wide/from16 v18, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    int-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v15, v0

    .line 82
    int-to-double v0, v7

    move-wide/from16 v18, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    int-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 84
    :cond_0
    if-eqz p7, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->isCentered()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 85
    iget v15, v8, Landroid/graphics/Point;->x:I

    .line 86
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/gl/GLDrone;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 95
    .end local v4    # "angle":D
    .end local v7    # "center":I
    .end local v10    # "distance":D
    .end local v13    # "maxRadius":I
    :cond_1
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/parrot/freeflight/map/gl/GLDrone;->setCameraRotationInfo(FF)V

    .line 96
    int-to-float v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/gl/GLDrone;->setPosition(FF)V

    .line 97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/map/gl/GLDrone;->mRelativeAltitude:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/map/gl/GLDrone;->mMaxAltitude:F

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 98
    .local v14, "normalizedAltitude":F
    mul-float v18, v14, p4

    mul-float v18, v18, p5

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/GLDrone;->setYCorrection(F)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosX()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosY()F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosZ()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/map/gl/GLDrone;->setLineStartPosition(FFF)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosX()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosY()F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->getPosZ()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/map/gl/GLDrone;->setLineEndPosition(FFF)V

    .line 102
    .end local v6    # "bearing":F
    .end local v8    # "centerLocation":Landroid/graphics/Point;
    .end local v14    # "normalizedAltitude":F
    .end local v15    # "positionX":I
    .end local v16    # "positionY":I
    .end local v17    # "screenLocation":Landroid/graphics/Point;
    :cond_2
    return-void

    .line 90
    .restart local v6    # "bearing":F
    .restart local v8    # "centerLocation":Landroid/graphics/Point;
    .restart local v15    # "positionX":I
    .restart local v16    # "positionY":I
    .restart local v17    # "screenLocation":Landroid/graphics/Point;
    :cond_3
    if-eqz p7, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->isCentered()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 91
    iget v15, v8, Landroid/graphics/Point;->x:I

    .line 92
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    goto/16 :goto_0
.end method

.method public getLineEndX()F
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineEndPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndY()F
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineEndPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndZ()F
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineEndPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartX()F
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineStartPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartY()F
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineStartPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartZ()F
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineStartPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method public getTextureResId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 110
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mTextureResId:I

    return v0
.end method

.method public setCameraRotationInfo(FF)V
    .locals 0
    .param p1, "cameraTilt"    # F
    .param p2, "cameraBearing"    # F

    .prologue
    .line 133
    iput p1, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mCameraTilt:F

    .line 134
    iput p2, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mCameraBearing:F

    .line 135
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/gl/GLDrone;->updateObjectsRotations()V

    .line 136
    return-void
.end method

.method public setLineEndPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineEndPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineEndPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineEndPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 184
    return-void
.end method

.method public setLineStartPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineStartPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineStartPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mLineStartPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 178
    return-void
.end method

.method public setMaxAltitude(F)V
    .locals 1
    .param p1, "maxAltitude"    # F

    .prologue
    .line 166
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 167
    iput p1, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mMaxAltitude:F

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mMaxAltitude:F

    goto :goto_0
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    .line 157
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mYCorrection:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mPosZ:F

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/parrot/freeflight/map/gl/GLDrone;->setPosition(FFFZ)V

    .line 158
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F

    .prologue
    .line 162
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mYCorrection:F

    add-float/2addr v0, p2

    invoke-super {p0, p1, v0, p3}, Lcom/parrot/engine3d/objects/GLRect3D;->setPosition(FFF)V

    .line 163
    return-void
.end method

.method public setYCorrection(F)V
    .locals 0
    .param p1, "yCorrection"    # F

    .prologue
    .line 129
    iput p1, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mYCorrection:F

    .line 130
    return-void
.end method

.method public updateObjectsRotations()V
    .locals 6

    .prologue
    .line 139
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mCameraTilt:F

    neg-float v0, v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mCameraBearing:F

    iget-object v3, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v4

    double-to-float v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/map/gl/GLDrone;->setRotation(FFF)V

    .line 140
    return-void
.end method

.method public updateRelativeAltitude(F)Z
    .locals 1
    .param p1, "relativeAltitude"    # F

    .prologue
    .line 148
    iget v0, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mRelativeAltitude:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 149
    iput p1, p0, Lcom/parrot/freeflight/map/gl/GLDrone;->mRelativeAltitude:F

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
