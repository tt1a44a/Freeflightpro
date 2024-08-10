.class public Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
.super Ljava/lang/Object;
.source "GlScreenUnitConverter.java"


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public convertToScreenSpace(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToScreenSpace(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToScreenSpace(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public convertXToSceneSpace(F)F
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 20
    iget v0, p0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->mWidth:F

    sub-float v0, p1, v0

    return v0
.end method

.method public convertXToScreenSpace(F)F
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 28
    iget v0, p0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->mWidth:F

    add-float/2addr v0, p1

    return v0
.end method

.method public convertYToSceneSpace(F)F
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 24
    neg-float v0, p1

    iget v1, p0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->mHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public convertYToScreenSpace(F)F
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 36
    neg-float v0, p1

    iget v1, p0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->mHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->mWidth:F

    return v0
.end method

.method public updateScreenSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 15
    int-to-float v0, p1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->mWidth:F

    .line 16
    int-to-float v0, p2

    iput v0, p0, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->mHeight:F

    .line 17
    return-void
.end method
