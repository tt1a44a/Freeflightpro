.class public abstract Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLFlightPlanWayPoint.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;
.implements Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;


# static fields
.field public static final COLOR_MAX:I

.field public static final COLOR_MIDDLE:I

.field public static final COLOR_MIN:I

.field public static final POSITION_TEXT_INDEX:I = 0x1

.field public static final POSITION_TEXT_PRIMARY:I = 0x0

.field public static final POSITION_TEXT_SECONDARY:I = 0x2


# instance fields
.field protected mCameraBearing:F

.field protected mCameraTilt:F

.field protected mCenter:Lcom/parrot/engine3d/objects/GLTextObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mInitialScale:F

.field protected final mLineEndPosition:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mLineStartPosition:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mSelected:Z

.field protected final mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mWpMaxAltitude:F

.field protected final mWpMinAltitude:F

.field protected mYCorrection:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0x33

    const/16 v1, 0xbd

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MIN:I

    .line 28
    const/16 v0, 0xf6

    const/16 v1, 0xa6

    const/16 v2, 0x2b

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MIDDLE:I

    .line 29
    const/16 v0, 0xeb

    const/16 v1, 0xa

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZFF)V
    .locals 2
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
    .param p5, "wpMinAltitude"    # F
    .param p6, "wpMaxAltitude"    # F

    .prologue
    const/4 v1, 0x3

    .line 63
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mResources:Landroid/content/res/Resources;

    .line 65
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 66
    iput p3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mInitialScale:F

    .line 67
    iput-boolean p4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mSelected:Z

    .line 68
    iput p5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWpMinAltitude:F

    .line 69
    iput p6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWpMaxAltitude:F

    .line 71
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineStartPosition:[F

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineEndPosition:[F

    .line 73
    new-instance v0, Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 74
    return-void
.end method

.method public static getWayPointBackColor(FFFZ)[F
    .locals 1
    .param p0, "wayPointAltitude"    # F
    .param p1, "altitudeMin"    # F
    .param p2, "altitudeMax"    # F
    .param p3, "isSelected"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 118
    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColorComponents(FFF)[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getWayPointColor(FFF)I
    .locals 10
    .param p0, "height"    # F
    .param p1, "altitudeMin"    # F
    .param p2, "altitudeMax"    # F

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 128
    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result p0

    .line 130
    sub-float v7, p2, p1

    div-float/2addr v7, v9

    add-float v5, v7, p1

    .line 133
    .local v5, "middleAltitude":F
    cmpl-float v7, p0, v5

    if-nez v7, :cond_0

    .line 134
    sget v7, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MIDDLE:I

    .line 149
    :goto_0
    return v7

    .line 135
    :cond_0
    cmpg-float v7, p0, v5

    if-gez v7, :cond_1

    .line 136
    sget v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MIN:I

    .line 137
    .local v1, "beforeColor":I
    sget v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MIDDLE:I

    .line 138
    .local v0, "afterColor":I
    sub-float v7, p0, p1

    sub-float v8, p2, p1

    div-float/2addr v8, v9

    div-float v3, v7, v8

    .line 145
    .local v3, "deltaPercentage":F
    :goto_1
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    add-int v6, v7, v8

    .line 146
    .local v6, "red":I
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int v4, v7, v8

    .line 147
    .local v4, "green":I
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    add-int v2, v7, v8

    .line 149
    .local v2, "blue":I
    invoke-static {v6, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    goto :goto_0

    .line 140
    .end local v0    # "afterColor":I
    .end local v1    # "beforeColor":I
    .end local v2    # "blue":I
    .end local v3    # "deltaPercentage":F
    .end local v4    # "green":I
    .end local v6    # "red":I
    :cond_1
    sget v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MIDDLE:I

    .line 141
    .restart local v1    # "beforeColor":I
    sget v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MAX:I

    .line 142
    .restart local v0    # "afterColor":I
    sub-float v7, p0, v5

    sub-float v8, p2, p1

    div-float/2addr v8, v9

    div-float v3, v7, v8

    .restart local v3    # "deltaPercentage":F
    goto :goto_1
.end method

.method public static getWayPointColorComponents(FFF)[F
    .locals 5
    .param p0, "height"    # F
    .param p1, "altitudeMin"    # F
    .param p2, "altitudeMax"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 123
    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColor(FFF)I

    move-result v0

    .line 124
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

.method public static getWayPointFrontColor(FFFZ)[F
    .locals 1
    .param p0, "wayPointAltitude"    # F
    .param p1, "altitudeMin"    # F
    .param p2, "altitudeMax"    # F
    .param p3, "isSelected"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    if-eqz p3, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColorComponents(FFF)[F

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLTextObject;->areResourcesCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V
    .locals 6
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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 97
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 98
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    .line 99
    .local v1, "screenLocation":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v3

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWpMaxAltitude:F

    div-float v0, v3, v4

    .line 100
    .local v0, "normalizedAltitude":F
    mul-float v3, v0, p6

    mul-float/2addr v3, p7

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .line 102
    .local v2, "yCorrection":F
    iget v3, p4, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iget v4, p4, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-virtual {p0, v3, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setCameraRotationInfo(FF)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setYCorrection(F)V

    .line 104
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {p5, v3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p5, v4}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v5, v2, v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setPosition(FFF)V

    .line 106
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v3

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosZ()F

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setLineStartPosition(FFF)V

    .line 107
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v3

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosZ()F

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setLineEndPosition(FFF)V

    .line 109
    .end local v0    # "normalizedAltitude":F
    .end local v1    # "screenLocation":Landroid/graphics/Point;
    .end local v2    # "yCorrection":F
    :cond_0
    return-void
.end method

.method public computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V
    .locals 8
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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->computePosition(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;FF)V

    .line 91
    return-void
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->createGLResources(Landroid/content/res/Resources;)Z

    .line 253
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public deleteGLResources()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLTextObject;->deleteGLResources()V

    .line 272
    :cond_0
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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLTextObject;->draw([F[F[F)V

    .line 244
    :cond_0
    return-void
.end method

.method protected generateAltitudeString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 84
    .local v0, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public generatePrimaryText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->generateAltitudeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraBearing()F
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCameraBearing:F

    return v0
.end method

.method public getCameraTilt()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCameraTilt:F

    return v0
.end method

.method public abstract getFullScale()F
.end method

.method public getLineEndX()F
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineEndPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndY()F
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineEndPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndZ()F
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineEndPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartX()F
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineStartPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartY()F
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineStartPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartZ()F
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineStartPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mSelected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mInitialScale:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mInitialScale:F

    goto :goto_0
.end method

.method public getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLTextObject;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    return-object v0
.end method

.method public getYCorrection()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mYCorrection:F

    return v0
.end method

.method public markResourcesCreated(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->markResourcesCreated(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public setCameraRotationInfo(FF)V
    .locals 0
    .param p1, "cameraTilt"    # F
    .param p2, "cameraBearing"    # F
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 207
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCameraTilt:F

    .line 208
    iput p2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCameraBearing:F

    .line 209
    return-void
.end method

.method protected setColorFromAltitude(Z)V
    .locals 4
    .param p1, "isSelected"    # Z

    .prologue
    .line 155
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v0

    .line 157
    .local v0, "altitude":F
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWpMinAltitude:F

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWpMaxAltitude:F

    invoke-static {v0, v2, v3, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointFrontColor(FFFZ)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/engine3d/objects/GLTextObject;->setFrontColor([F)V

    .line 158
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWpMinAltitude:F

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mWpMaxAltitude:F

    invoke-static {v0, v2, v3, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointBackColor(FFFZ)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/engine3d/objects/GLTextObject;->setBackColor([F)V

    .line 160
    .end local v0    # "altitude":F
    :cond_0
    return-void
.end method

.method public setLineEndPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineEndPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 335
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineEndPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 336
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineEndPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 337
    return-void
.end method

.method public setLineStartPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineStartPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineStartPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 330
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mLineStartPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 331
    return-void
.end method

.method public setPosition(FF)V
    .locals 4
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 190
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mYCorrection:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mPosZ:F

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setPosition(FFFZ)V

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mYCorrection:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mPosZ:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->setPosition(FFFZ)V

    .line 194
    :cond_0
    return-void
.end method

.method public setPosition(FFF)V
    .locals 2
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 199
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mYCorrection:F

    add-float/2addr v0, p2

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, p3, v1}, Lcom/parrot/engine3d/objects/GLObject3D;->setPosition(FFFZ)V

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mYCorrection:F

    add-float/2addr v1, p2

    invoke-virtual {v0, p1, v1, p3}, Lcom/parrot/engine3d/objects/GLTextObject;->setPosition(FFF)V

    .line 203
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/parrot/engine3d/objects/GLObject3D;->setScale(F)V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->setScale(F)V

    .line 236
    :cond_0
    return-void
.end method

.method public setSelected(ZZ)V
    .locals 2
    .param p1, "isSelected"    # Z
    .param p2, "isUpdatingPoi"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mSelected:Z

    .line 164
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mInitialScale:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setScale(F)V

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateColorsAccordingToSituation(ZZ)V

    .line 166
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mInitialScale:F

    goto :goto_0
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;)V
    .locals 1
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 172
    :cond_0
    return-void
.end method

.method public setTextVisibility(IZ)V
    .locals 1
    .param p1, "textIndex"    # I
    .param p2, "isVisible"    # Z

    .prologue
    .line 303
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/engine3d/objects/GLTextObject;->setTextVisibility(IZ)V

    .line 306
    :cond_0
    return-void
.end method

.method public setYCorrection(F)V
    .locals 0
    .param p1, "yCorrection"    # F

    .prologue
    .line 184
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mYCorrection:F

    .line 185
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 6
    .param p1, "centerBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isSelected"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 309
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const v3, 0x3f555326    # 0.8333f

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const v4, 0x3e34bc6a    # 0.1765f

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 310
    invoke-virtual {v2, v1, v3, v4}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextPosition(III)V

    .line 313
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextPosition(III)V

    .line 314
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-nez p2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/parrot/engine3d/objects/GLTextObject;->setTextVisibility(IZ)V

    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    :cond_1
    return-void
.end method

.method public abstract updateBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract updateColorsAccordingToSituation(ZZ)V
.end method

.method public updateIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v1, 0x1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/engine3d/objects/GLTextObject;->updateText(ILjava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method public updatePrimaryText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 297
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->updateText(ILjava/lang/String;)V

    .line 300
    :cond_0
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->updateResources(Landroid/content/res/Resources;)V

    .line 263
    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
