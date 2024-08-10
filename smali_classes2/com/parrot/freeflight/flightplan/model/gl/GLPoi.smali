.class public Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
.super Lcom/parrot/engine3d/objects/GLTextObject;
.source "GLPoi.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;


# instance fields
.field private final mInitialScale:F

.field private final mMaxAltitude:F

.field private final mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mYCorrection:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;FZLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;F)V
    .locals 18
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "scale"    # F
    .param p4, "isSelected"    # Z
    .param p5, "shader"    # Lcom/parrot/engine3d/GLShader;
    .param p6, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "maxAltitude"    # F

    .prologue
    .line 29
    const/4 v4, 0x1

    new-array v11, v4, [Lcom/parrot/engine3d/bitmaps/BitmapText;

    const/4 v12, 0x0

    new-instance v4, Lcom/parrot/engine3d/bitmaps/BitmapText;

    new-instance v5, Lcom/parrot/freeflight/util/ui/MetricsServant;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual/range {p2 .. p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getAltitude()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f06015f

    .line 30
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/high16 v7, -0x1000000

    .line 31
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v14, v10

    const-wide v16, 0x400f333333333333L    # 3.9

    div-double v14, v14, v16

    double-to-int v10, v14

    add-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v4, v11, v12

    .line 29
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2, v11}, Lcom/parrot/engine3d/objects/GLTextObject;-><init>(Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)V

    .line 32
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 33
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mInitialScale:F

    .line 34
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mMaxAltitude:F

    .line 35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoiGlColor(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)[F

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setBackColor([F)V

    .line 36
    const/4 v4, 0x4

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setFrontColor([F)V

    .line 38
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setSelected(Z)V

    .line 39
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getPoiGlColor(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)[F
    .locals 5
    .param p0, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 55
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getColor()I

    move-result v0

    .line 56
    .local v0, "color":I
    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    return-object v1
.end method


# virtual methods
.method public computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V
    .locals 6
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

    .prologue
    .line 43
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 44
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    .line 45
    .local v1, "screenLocation":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getAltitude()F

    move-result v3

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mMaxAltitude:F

    div-float v0, v3, v4

    .line 46
    .local v0, "normalizedAltitude":F
    mul-float v3, v0, p4

    mul-float/2addr v3, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .line 48
    .local v2, "yCorrection":F
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setYCorrection(F)V

    .line 49
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {p3, v3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p3, v4}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v5, v2, v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setPosition(FFF)V

    .line 51
    .end local v0    # "normalizedAltitude":F
    .end local v1    # "screenLocation":Landroid/graphics/Point;
    .end local v2    # "yCorrection":F
    :cond_0
    return-void
.end method

.method public getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mInitialScale:F

    return v0
.end method

.method public getYCorrection()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mYCorrection:F

    return v0
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    .line 65
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mYCorrection:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mPosZ:F

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setPosition(FFFZ)V

    .line 66
    return-void
.end method

.method public setPosition(FFF)V
    .locals 2
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F

    .prologue
    .line 70
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mYCorrection:F

    add-float/2addr v0, p2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setPosition(FFFZ)V

    .line 71
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mInitialScale:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->setScale(F)V

    .line 61
    return-void

    .line 60
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mInitialScale:F

    goto :goto_0
.end method

.method public setYCorrection(F)V
    .locals 0
    .param p1, "YCorrection"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->mYCorrection:F

    .line 84
    return-void
.end method
