.class public Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;
.super Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
.source "GLFixedWingWayPoint.java"


# static fields
.field private static final ANTI_CLOCKWISE_ROTATION_ANGLE:F = 90.0f

.field private static final ANTI_CLOCKWISE_ROTATION_END_ANGLE:F = 100.0f

.field private static final ANTI_CLOCKWISE_ROTATION_START_ANGLE:F = 80.0f

.field private static final BITMAP_TEXT_ARRAY_SIZE:I = 0x3

.field private static final CLOCKWISE_ROTATION_ANGLE:F = -90.0f

.field private static final CLOCKWISE_ROTATION_END_ANGLE:F = -100.0f

.field private static final CLOCKWISE_ROTATION_START_ANGLE:F = -80.0f

.field private static final SECONDARY_TEXT_POSITION_DIVIDER:F = 2.5f


# instance fields
.field private final mArc:Lcom/parrot/engine3d/objects/GLArc;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mClockWise:Z

.field private mGlWpOrbitRadius:F

.field private mLastBearing:F

.field private mLastTilt:F

.field private mLastZoom:F

.field private mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWpOrbitRadius:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/objects/GLArc$Properties;F)V
    .locals 16
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "scale"    # F
    .param p4, "selected"    # Z
    .param p5, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "centerBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "planProductCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "arcShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "arcProperties"    # Lcom/parrot/engine3d/objects/GLArc$Properties;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "arcThickness"    # F

    .prologue
    .line 59
    invoke-virtual/range {p7 .. p7}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinAltitude()F

    move-result v7

    invoke-virtual/range {p7 .. p7}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;-><init>(Landroid/content/res/Resources;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZFF)V

    .line 46
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    .line 50
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    .line 51
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLastZoom:F

    .line 52
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLastTilt:F

    .line 53
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLastBearing:F

    .line 60
    invoke-virtual/range {p7 .. p7}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultWpOrbitRadius()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpOrbitRadius:F

    .line 61
    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpOrbitRadius:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setRadius(F)V

    .line 63
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    .line 64
    .local v6, "centerBitmapHalfWidth":I
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v7, v2, 0x2

    .line 65
    .local v7, "centerBitmapHalfHeight":I
    const/4 v2, 0x3

    new-array v15, v2, [Lcom/parrot/engine3d/bitmaps/BitmapText;

    .line 66
    .local v15, "bitmapTexts":[Lcom/parrot/engine3d/bitmaps/BitmapText;
    const/4 v9, 0x0

    new-instance v2, Lcom/parrot/engine3d/bitmaps/BitmapText;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->generatePrimaryText()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f06015f

    .line 67
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/high16 v5, -0x1000000

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v2, v15, v9

    .line 69
    const/4 v2, 0x1

    new-instance v8, Lcom/parrot/engine3d/bitmaps/BitmapText;

    invoke-virtual/range {p2 .. p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const v3, 0x7f06015e

    .line 70
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/4 v11, -0x1

    const v3, 0x3f555326    # 0.8333f

    .line 71
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v12, v3

    const v3, 0x3e34bc6a    # 0.1765f

    .line 72
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v13, v3

    if-nez p4, :cond_0

    const/4 v14, 0x1

    :goto_0
    invoke-direct/range {v8 .. v14}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v8, v15, v2

    .line 73
    const/4 v2, 0x2

    new-instance v8, Lcom/parrot/engine3d/bitmaps/BitmapText;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->generateAltitudeString()Ljava/lang/String;

    move-result-object v9

    const v3, 0x7f060160

    .line 74
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/high16 v11, -0x1000000

    int-to-float v3, v7

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int v13, v7, v3

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v14, 0x1

    :goto_1
    move v12, v6

    invoke-direct/range {v8 .. v14}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v8, v15, v2

    .line 76
    new-instance v2, Lcom/parrot/engine3d/objects/GLTextObject;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v2, v0, v1, v15}, Lcom/parrot/engine3d/objects/GLTextObject;-><init>(Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpMinAltitude:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpMaxAltitude:F

    invoke-static {v2, v3, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColorComponents(FFF)[F

    move-result-object v12

    .line 79
    .local v12, "wpColor":[F
    new-instance v8, Lcom/parrot/engine3d/objects/GLArc;

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object v13, v12

    invoke-direct/range {v8 .. v13}, Lcom/parrot/engine3d/objects/GLArc;-><init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/objects/GLArc$Properties;F[F[F)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    .line 80
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->setScale(F)V

    .line 81
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->updateColorsAccordingToSituation(ZZ)V

    .line 82
    return-void

    .line 72
    .end local v12    # "wpColor":[F
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 75
    :cond_1
    const/4 v14, 0x0

    goto :goto_1
.end method

.method private calcArcCenterPosition([F[F)[F
    .locals 7
    .param p1, "prevVector"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "nextVector"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 230
    .local v0, "centerCoordinates":[F
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 231
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v1

    aget v2, p2, v4

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 233
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v1

    aget v2, p2, v5

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 234
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v1

    aput v1, v0, v6

    .line 245
    :goto_0
    return-object v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v1

    aget v2, p1, v4

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 237
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v1

    aget v2, p1, v5

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 238
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v1

    aput v1, v0, v6

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v1

    aput v1, v0, v4

    .line 242
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v1

    aput v1, v0, v5

    .line 243
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v1

    aput v1, v0, v6

    goto :goto_0
.end method

.method private calcLinearLandingLinePosition([FF)V
    .locals 9
    .param p1, "centerPosition"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arcPrevAngle"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v3

    aput v3, v2, v6

    .line 272
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v3

    aput v3, v2, v7

    .line 273
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v3

    aput v3, v2, v8

    .line 275
    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 276
    .local v0, "angleRad":D
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineEndPosition:[F

    aget v3, p1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 277
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineEndPosition:[F

    aget v3, p1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v7

    .line 278
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineEndPosition:[F

    aget v3, p1, v8

    aput v3, v2, v8

    .line 279
    return-void
.end method

.method private calcLinearLandingPosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
    .locals 12
    .param p1, "endLandingGlWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v1}, Lcom/parrot/engine3d/objects/GLArc;->getShader()Lcom/parrot/engine3d/GLShader;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 284
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v2

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpMinAltitude:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpMaxAltitude:F

    invoke-static {v2, v3, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColorComponents(FFF)[F

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpMinAltitude:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpMinAltitude:F

    iget v5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpMaxAltitude:F

    .line 285
    invoke-static {v3, v4, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColorComponents(FFF)[F

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;-><init>(Lcom/parrot/engine3d/GLShader;[F[F)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->createGLResources(Landroid/content/res/Resources;)Z

    .line 288
    :cond_0
    const/4 v0, 0x4

    new-array v11, v0, [F

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getLineStartX()F

    move-result v1

    sub-float/2addr v0, v1

    aput v0, v11, v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getLineStartY()F

    move-result v1

    sub-float/2addr v0, v1

    aput v0, v11, v7

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getLineStartZ()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v11, v0

    const/4 v0, 0x3

    aput v9, v11, v0

    .line 289
    .local v11, "landingDirVector":[F
    invoke-static {v11}, Lcom/parrot/freeflight/flightplan/utils/Vector;->normalize([F)[F

    move-result-object v11

    .line 290
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-static {v11, v0, v8, v8, v9}, Lcom/parrot/freeflight/flightplan/utils/Vector;->rotate([FFFFF)[F

    move-result-object v10

    .line 292
    .local v10, "landingDirOrthoVector":[F
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    aget v1, v1, v6

    aget v2, v10, v6

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    aget v2, v2, v7

    aget v3, v10, v7

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    aget v4, v4, v6

    aget v5, v10, v6

    iget v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    aget v5, v5, v7

    aget v6, v10, v7

    iget v7, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 293
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v6

    .line 294
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v7

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v8

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosZ()F

    move-result v9

    .line 292
    invoke-virtual/range {v0 .. v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->updateVertices(FFFFFFFFF)V

    .line 295
    return-void
.end method

.method private calcLinesPositions([F[F)V
    .locals 7
    .param p1, "nextVector"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "centerPosition"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineEndPosition:[F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v1

    aput v1, v0, v4

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineEndPosition:[F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v1

    aput v1, v0, v5

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineEndPosition:[F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v1

    aput v1, v0, v6

    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    aget v1, p2, v4

    aget v2, p1, v4

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    aget v1, p2, v5

    aget v2, p1, v5

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineStartPosition:[F

    aget v1, p2, v6

    aput v1, v0, v6

    .line 258
    :cond_0
    return-void
.end method

.method private calcSpiralLandingLinePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;F)V
    .locals 8
    .param p1, "prevWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rotationAngle"    # F

    .prologue
    const/4 v7, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    const/4 v1, 0x4

    new-array v0, v1, [F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartX()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v5

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartY()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v6

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosZ()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v7

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 262
    .local v0, "prevVector":[F
    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/utils/Vector;->normalize([F)[F

    move-result-object v0

    .line 263
    neg-float v1, p2

    invoke-static {v0, v1, v3, v3, v4}, Lcom/parrot/freeflight/flightplan/utils/Vector;->rotate([FFFFF)[F

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineEndPosition:[F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v2

    aget v3, v0, v5

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 266
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineEndPosition:[F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v2

    aget v3, v0, v6

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 267
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLineEndPosition:[F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v2

    aput v2, v1, v7

    .line 268
    return-void
.end method

.method private computeArcProperties(Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;)[F
    .locals 16
    .param p1, "prevWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "nextWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 133
    const/4 v3, 0x0

    .local v3, "arcNextAngle":F
    const/4 v4, 0x0

    .line 134
    .local v4, "arcPrevAngle":F
    const/4 v8, 0x0

    .local v8, "prevVector":[F
    const/4 v7, 0x0

    .line 135
    .local v7, "nextVector":[F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v12}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v6

    .line 138
    .local v6, "landingMode":I
    if-eqz p1, :cond_0

    .line 139
    const/4 v12, 0x4

    new-array v8, v12, [F

    .end local v8    # "prevVector":[F
    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v14

    sub-float/2addr v13, v14

    aput v13, v8, v12

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v14

    sub-float/2addr v13, v14

    aput v13, v8, v12

    const/4 v12, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v14

    sub-float/2addr v13, v14

    aput v13, v8, v12

    const/4 v12, 0x3

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v8, v12

    .line 140
    .restart local v8    # "prevVector":[F
    invoke-static {v8}, Lcom/parrot/freeflight/flightplan/utils/Vector;->normalize([F)[F

    move-result-object v8

    .line 142
    :cond_0
    if-eqz p2, :cond_1

    .line 143
    const/4 v12, 0x4

    new-array v7, v12, [F

    .end local v7    # "nextVector":[F
    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosX()F

    move-result v14

    sub-float/2addr v13, v14

    aput v13, v7, v12

    const/4 v12, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosY()F

    move-result v14

    sub-float/2addr v13, v14

    aput v13, v7, v12

    const/4 v12, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getPosZ()F

    move-result v14

    sub-float/2addr v13, v14

    aput v13, v7, v12

    const/4 v12, 0x3

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v7, v12

    .line 144
    .restart local v7    # "nextVector":[F
    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/utils/Vector;->normalize([F)[F

    move-result-object v7

    .line 147
    :cond_1
    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    .line 149
    const/4 v12, 0x0

    aget v12, v8, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    mul-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v8, v13

    const/4 v14, 0x0

    aget v14, v7, v14

    mul-float/2addr v13, v14

    sub-float v5, v12, v13

    .line 150
    .local v5, "det":F
    const/4 v12, 0x0

    cmpg-float v12, v5, v12

    if-gez v12, :cond_7

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    .line 157
    .end local v5    # "det":F
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->determineRotationAngle([F[F)F

    move-result v9

    .line 159
    .local v9, "rotationAngle":F
    if-eqz v8, :cond_3

    .line 160
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v12, v13, v14}, Lcom/parrot/freeflight/flightplan/utils/Vector;->rotate([FFFFF)[F

    move-result-object v8

    .line 161
    const/4 v12, 0x1

    aget v12, v8, v12

    neg-float v12, v12

    float-to-double v12, v12

    const/4 v14, 0x0

    aget v14, v8, v14

    neg-float v14, v14

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v4, v12

    .line 163
    :cond_3
    if-eqz v7, :cond_4

    .line 164
    neg-float v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v7, v12, v13, v14, v15}, Lcom/parrot/freeflight/flightplan/utils/Vector;->rotate([FFFFF)[F

    move-result-object v7

    .line 165
    const/4 v12, 0x1

    aget v12, v7, v12

    float-to-double v12, v12

    const/4 v14, 0x0

    aget v14, v7, v14

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v3, v12

    .line 168
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->calcArcCenterPosition([F[F)[F

    move-result-object v2

    .line 169
    .local v2, "arcCenterPosition":[F
    const/4 v12, 0x1

    if-ne v6, v12, :cond_a

    if-eqz p1, :cond_a

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->calcSpiralLandingLinePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;F)V

    .line 177
    :goto_2
    if-nez v6, :cond_5

    if-eqz p2, :cond_5

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->calcLinearLandingPosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 182
    :cond_5
    const/4 v10, 0x0

    .local v10, "startAngle":F
    const/4 v11, 0x0

    .line 183
    .local v11, "sweepAngle":F
    if-eqz v8, :cond_d

    if-eqz v7, :cond_d

    .line 185
    sub-float v12, v3, v4

    const/high16 v13, 0x43340000    # 180.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_c

    .line 186
    const/high16 v12, 0x43b40000    # 360.0f

    sub-float v13, v3, v4

    sub-float v11, v12, v13

    .line 187
    move v10, v3

    .line 192
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    if-nez v12, :cond_6

    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_6

    .line 193
    const/high16 v12, 0x43b40000    # 360.0f

    add-float/2addr v11, v12

    .line 204
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v12, v10, v11}, Lcom/parrot/engine3d/objects/GLArc;->updateAngles(FF)V

    .line 205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    const/4 v13, 0x0

    aget v13, v2, v13

    const/4 v14, 0x1

    aget v14, v2, v14

    const/4 v15, 0x2

    aget v15, v2, v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/parrot/engine3d/objects/GLArc;->setPosition(FFF)V

    .line 207
    return-object v2

    .line 150
    .end local v2    # "arcCenterPosition":[F
    .end local v9    # "rotationAngle":F
    .end local v10    # "startAngle":F
    .end local v11    # "sweepAngle":F
    .restart local v5    # "det":F
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 151
    .end local v5    # "det":F
    :cond_8
    if-eqz p1, :cond_9

    .line 152
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    goto/16 :goto_1

    .line 153
    :cond_9
    if-eqz p2, :cond_2

    .line 154
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    goto/16 :goto_1

    .line 171
    .restart local v2    # "arcCenterPosition":[F
    .restart local v9    # "rotationAngle":F
    :cond_a
    if-nez v6, :cond_b

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->calcLinearLandingLinePosition([FF)V

    goto :goto_2

    .line 174
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->calcLinesPositions([F[F)V

    goto :goto_2

    .line 189
    .restart local v10    # "startAngle":F
    .restart local v11    # "sweepAngle":F
    :cond_c
    sub-float v11, v3, v4

    .line 190
    move v10, v4

    goto :goto_3

    .line 195
    :cond_d
    if-nez v8, :cond_e

    .line 197
    const/4 v10, 0x0

    .line 198
    const/high16 v11, 0x43b40000    # 360.0f

    goto :goto_4

    .line 199
    :cond_e
    const/4 v12, 0x1

    if-ne v6, v12, :cond_6

    .line 201
    const/4 v10, 0x0

    .line 202
    const/high16 v11, 0x43b40000    # 360.0f

    goto :goto_4
.end method

.method private computeGlWayPointOrbitRadius(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 3
    .param p1, "mapProjection"    # Lcom/parrot/freeflight/map/IProjection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mapCameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "needReCompute":Z
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLastZoom:F

    iget v2, p2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 114
    iget v1, p2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLastZoom:F

    .line 115
    const/4 v0, 0x1

    .line 117
    :cond_0
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLastTilt:F

    iget v2, p2, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 118
    iget v1, p2, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLastTilt:F

    .line 119
    const/4 v0, 0x1

    .line 121
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLastBearing:F

    iget v2, p2, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 122
    iget v1, p2, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLastBearing:F

    .line 123
    const/4 v0, 0x1

    .line 125
    :cond_2
    if-eqz v0, :cond_3

    .line 126
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpOrbitRadius:F

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->metersToScreenDistance(Lcom/parrot/freeflight/map/IProjection;FLcom/google/android/gms/maps/model/LatLng;)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mGlWpOrbitRadius:F

    invoke-virtual {v1, v2}, Lcom/parrot/engine3d/objects/GLArc;->updateRadius(F)V

    .line 129
    :cond_3
    return-void
.end method

.method private determineRotationAngle([F[F)F
    .locals 1
    .param p1, "prevVector"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "nextVector"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 218
    if-nez p1, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x3d600000    # -80.0f

    .line 223
    :goto_0
    return v0

    .line 219
    :cond_0
    const/high16 v0, 0x42a00000    # 80.0f

    goto :goto_0

    .line 220
    :cond_1
    if-nez p2, :cond_3

    .line 221
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x3d380000    # -100.0f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    .line 223
    :cond_3
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    if-eqz v0, :cond_4

    const/high16 v0, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_4
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0
.end method

.method private setWayPointProperties(Lcom/parrot/freeflight/map/IProjection;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;[F)V
    .locals 4
    .param p1, "mapProjection"    # Lcom/parrot/freeflight/map/IProjection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unitConverter"    # Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "arcCenterPosition"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 298
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    iget-boolean v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mClockWise:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getRadius()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_0
    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setRadius(F)V

    .line 299
    new-instance v0, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, p3, v2

    invoke-virtual {p2, v2}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToScreenSpace(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, p3, v3

    invoke-virtual {p2, v3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToScreenSpace(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 300
    .local v0, "arcCenterInScreenUnit":Landroid/graphics/Point;
    invoke-interface {p1, v0}, Lcom/parrot/freeflight/map/IProjection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 302
    .local v1, "arcCenterLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setArcCenterLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 303
    return-void

    .line 298
    .end local v0    # "arcCenterInScreenUnit":Landroid/graphics/Point;
    .end local v1    # "arcCenterLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getRadius()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v2, v2

    goto :goto_0
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->areResourcesCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLArc;->areResourcesCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V
    .locals 1
    .param p1, "prevWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "nextWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mapProjection"    # Lcom/parrot/freeflight/map/IProjection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "mapCameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "unitConverter"    # Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "normalizedTilt"    # F
    .param p7, "zoomFactor"    # F

    .prologue
    .line 103
    invoke-super/range {p0 .. p7}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->computePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 104
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 105
    invoke-direct {p0, p3, p4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->computeGlWayPointOrbitRadius(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 106
    check-cast p1, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;

    .end local p1    # "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    check-cast p2, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;

    .end local p2    # "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->computeArcProperties(Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;)[F

    move-result-object v0

    .line 107
    .local v0, "arcCenterPosition":[F
    invoke-direct {p0, p3, p5, v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->setWayPointProperties(Lcom/parrot/freeflight/map/IProjection;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;[F)V

    .line 109
    .end local v0    # "arcCenterPosition":[F
    :cond_0
    return-void
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->createGLResources(Landroid/content/res/Resources;)Z

    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLArc;->createGLResources(Landroid/content/res/Resources;)Z

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public deleteGLResources()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 354
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->deleteGLResources()V

    .line 355
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLArc;->deleteGLResources()V

    .line 356
    return-void
.end method

.method public draw([F[F[F)V
    .locals 1
    .param p1, "vpMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "projectionMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->draw([F[F[F)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLArc;->draw([F[F[F)V

    .line 333
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->draw([F[F[F)V

    .line 334
    return-void
.end method

.method public generatePrimaryText()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 88
    .local v0, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f110257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f110255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f110256

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->generateAltitudeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFullScale()F
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mInitialScale:F

    return v0
.end method

.method public markResourcesCreated(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->markResourcesCreated(Z)V

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLArc;->markResourcesCreated(Z)V

    .line 367
    return-void
.end method

.method protected setColorFromAltitude(Z)V
    .locals 4
    .param p1, "isSelected"    # Z

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setColorFromAltitude(Z)V

    .line 314
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpMinAltitude:F

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mWpMaxAltitude:F

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColorComponents(FFF)[F

    move-result-object v0

    .line 315
    .local v0, "wpColor":[F
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v1, v0, v0}, Lcom/parrot/engine3d/objects/GLArc;->updateColors([F[F)V

    .line 317
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->updateBaseColors([F)V

    .line 320
    :cond_0
    return-void
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/GLShader;)V
    .locals 1
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arcShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 382
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v0, p2}, Lcom/parrot/engine3d/objects/GLArc;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mLinearLanding:Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 386
    :cond_0
    return-void
.end method

.method public updateBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "primaryBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "secondaryBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v1, 0x1

    const v2, 0x3f555326    # 0.8333f

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const v3, 0x3e34bc6a    # 0.1765f

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 372
    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextPosition(III)V

    .line 375
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextPosition(III)V

    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    :cond_0
    return-void
.end method

.method public updateColorsAccordingToSituation(ZZ)V
    .locals 0
    .param p1, "isSelected"    # Z
    .param p2, "isUpdatingPoi"    # Z

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->setColorFromAltitude(Z)V

    .line 308
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateResources(Landroid/content/res/Resources;)V

    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFixedWingWayPoint;->mArc:Lcom/parrot/engine3d/objects/GLArc;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLArc;->updateResources(Landroid/content/res/Resources;)V

    .line 349
    return-void
.end method
