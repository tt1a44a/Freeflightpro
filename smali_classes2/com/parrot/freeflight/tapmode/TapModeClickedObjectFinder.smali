.class public Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;
.super Ljava/lang/Object;
.source "TapModeClickedObjectFinder.java"


# instance fields
.field private final mScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/tapmode/TapModeGlScene;F)V
    .locals 0
    .param p1, "scene"    # Lcom/parrot/freeflight/tapmode/TapModeGlScene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "densityFactor"    # F

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;->mScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    .line 17
    return-void
.end method

.method private findPoiClick(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;->mScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->getPoi()Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v1

    .line 43
    .local v1, "poi":Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosX()F

    move-result v2

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosY()F

    move-result v3

    invoke-static {p1, p2, v2, v3}, Lcom/parrot/freeflight/util/Geometry;->dist(FFFF)F

    move-result v0

    .line 45
    .local v0, "dist":F
    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getScale()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 46
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v2, v1, v3, v0}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;-><init>(Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;F)V

    .line 49
    .end local v0    # "dist":F
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findWpClick(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 30
    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;->mScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->getWayPoint()Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v1

    .line 31
    .local v1, "wayPoint":Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosX()F

    move-result v2

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getPosY()F

    move-result v3

    invoke-static {p1, p2, v2, v3}, Lcom/parrot/freeflight/util/Geometry;->dist(FFFF)F

    move-result v0

    .line 33
    .local v0, "dist":F
    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getScale()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 34
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v2, v1, v3, v0}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;-><init>(Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;F)V

    .line 37
    .end local v0    # "dist":F
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public find(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;->findPoiClick(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    move-result-object v0

    .line 22
    .local v0, "clickedWp":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    if-eqz v0, :cond_0

    .line 25
    .end local v0    # "clickedWp":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    :goto_0
    return-object v0

    .restart local v0    # "clickedWp":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;->findWpClick(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    move-result-object v0

    goto :goto_0
.end method
