.class public Lcom/parrot/freeflight/tapmode/GLTapModePoint;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLTapModePoint.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/tapmode/GLTapModePoint$PointType;
    }
.end annotation


# static fields
.field public static final POI:I = 0x0

.field public static final POSITION_TEXT_PRIMARY:I = 0x0

.field public static final WAYPOINT:I = 0x1


# instance fields
.field protected mCenter:Lcom/parrot/engine3d/objects/GLTextObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFrontColor:I

.field protected final mInitialScale:F

.field private mIsDragging:Z

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

.field private final mPointType:I

.field protected final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mWayPoint:Lcom/parrot/freeflight/tapmode/TapModePoint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mWpMaxAltitude:F

.field protected final mWpMinAltitude:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/tapmode/TapModePoint;FLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;IIFF)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wayPoint"    # Lcom/parrot/freeflight/tapmode/TapModePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "scale"    # F
    .param p4, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "centerBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "frontColor"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p7, "pointType"    # I
    .param p8, "wpMinAltitude"    # F
    .param p9, "wpMaxAltitude"    # F

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mResources:Landroid/content/res/Resources;

    .line 75
    iput-object p2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mWayPoint:Lcom/parrot/freeflight/tapmode/TapModePoint;

    .line 76
    iput p3, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mInitialScale:F

    .line 77
    iput p7, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mPointType:I

    .line 78
    move/from16 v0, p8

    iput v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mWpMinAltitude:F

    .line 79
    move/from16 v0, p9

    iput v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mWpMaxAltitude:F

    .line 80
    invoke-static {p1, p6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mFrontColor:I

    .line 82
    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineStartPosition:[F

    .line 83
    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineEndPosition:[F

    .line 84
    new-instance v2, Lcom/parrot/freeflight/util/ui/MetricsServant;

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 86
    if-eqz p5, :cond_0

    .line 87
    new-instance v1, Lcom/parrot/engine3d/bitmaps/BitmapText;

    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->generatePrimaryText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f06015f

    .line 88
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v4, -0x1000000

    .line 89
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    .line 91
    .local v1, "altitudeText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    new-instance v2, Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/parrot/engine3d/bitmaps/BitmapText;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, p4, p5, v3}, Lcom/parrot/engine3d/objects/GLTextObject;-><init>(Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)V

    iput-object v2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    .line 96
    .end local v1    # "altitudeText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    :goto_0
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setScale(F)V

    .line 97
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getColors(I)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->setBackColor([F)V

    .line 98
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setColorFromAltitude()V

    .line 99
    return-void

    .line 93
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    goto :goto_0
.end method

.method private getColors(I)[F
    .locals 4
    .param p1, "color"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 104
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 103
    return-object v0
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

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

.method public computePosition(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;)V
    .locals 4
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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 140
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mWayPoint:Lcom/parrot/freeflight/tapmode/TapModePoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/TapModePoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    .line 143
    .local v0, "screenLocation":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p3, v2}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setPosition(FF)V

    .line 144
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosX()F

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosY()F

    move-result v2

    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosZ()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setLineStartPosition(FFF)V

    .line 145
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosX()F

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosY()F

    move-result v2

    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosZ()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setLineEndPosition(FFF)V

    .line 147
    .end local v0    # "screenLocation":Landroid/graphics/Point;
    :cond_0
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
    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->createGLResources(Landroid/content/res/Resources;)Z

    .line 209
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
    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLTextObject;->deleteGLResources()V

    .line 228
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
    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLTextObject;->draw([F[F[F)V

    .line 200
    :cond_0
    return-void
.end method

.method protected generateAltitudeString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getWayPoint()Lcom/parrot/freeflight/tapmode/TapModePoint;

    move-result-object v0

    .line 133
    .local v0, "wayPoint":Lcom/parrot/freeflight/tapmode/TapModePoint;
    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModePoint;->getAltitude()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public generatePrimaryText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->generateAltitudeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineEndX()F
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineEndPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndY()F
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineEndPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineEndZ()F
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineEndPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartX()F
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineStartPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartY()F
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineStartPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLineStartZ()F
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineStartPosition:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mInitialScale:F

    return v0
.end method

.method public getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLTextObject;->getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWayPoint()Lcom/parrot/freeflight/tapmode/TapModePoint;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mWayPoint:Lcom/parrot/freeflight/tapmode/TapModePoint;

    return-object v0
.end method

.method public getWayPointFrontColor()[F
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 116
    iget v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mPointType:I

    packed-switch v0, :pswitch_data_0

    .line 121
    iget v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mFrontColor:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getColors(I)[F

    move-result-object v0

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mWayPoint:Lcom/parrot/freeflight/tapmode/TapModePoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModePoint;->getAltitude()F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mWpMinAltitude:F

    iget v2, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mWpMaxAltitude:F

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColorComponents(FFF)[F

    move-result-object v0

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mIsDragging:Z

    return v0
.end method

.method public isPOI()Z
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mPointType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWayPoint()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 306
    iget v1, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mPointType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markResourcesCreated(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->markResourcesCreated(Z)V

    .line 242
    :cond_0
    return-void
.end method

.method protected setColorFromAltitude()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getWayPointFrontColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLTextObject;->setFrontColor([F)V

    .line 112
    :cond_0
    return-void
.end method

.method public setDragging(Z)V
    .locals 0
    .param p1, "dragging"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mIsDragging:Z

    .line 315
    return-void
.end method

.method public setLineEndPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineEndPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineEndPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineEndPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 275
    return-void
.end method

.method public setLineStartPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineStartPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineStartPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mLineStartPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 269
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 163
    iget v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mPosZ:F

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setPosition(FFFZ)V

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    iget v1, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mPosZ:F

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/parrot/engine3d/objects/GLTextObject;->setPosition(FFFZ)V

    .line 167
    :cond_0
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/parrot/engine3d/objects/GLObject3D;->setPosition(FFFZ)V

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLTextObject;->setPosition(FFF)V

    .line 176
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/parrot/engine3d/objects/GLObject3D;->setScale(F)V

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->setScale(F)V

    .line 192
    :cond_0
    return-void
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;)V
    .locals 1
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 153
    :cond_0
    return-void
.end method

.method public updateBitmaps(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "primaryBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextPosition(III)V

    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 263
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
    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->updateText(ILjava/lang/String;)V

    .line 256
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
    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->updateResources(Landroid/content/res/Resources;)V

    .line 219
    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
