.class public Lcom/parrot/arsdk/lynx/LynxRectangle;
.super Ljava/lang/Object;
.source "LynxRectangle.java"


# instance fields
.field private mHeight:F

.field private mWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mX:F

    .line 11
    iput v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mY:F

    .line 12
    iput v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mWidth:F

    .line 13
    iput v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mHeight:F

    .line 14
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mX:F

    .line 18
    iput p2, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mY:F

    .line 19
    iput p3, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mWidth:F

    .line 20
    iput p4, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mHeight:F

    .line 21
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mY:F

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mHeight:F

    .line 53
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mWidth:F

    .line 45
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mX:F

    .line 29
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/parrot/arsdk/lynx/LynxRectangle;->mY:F

    .line 37
    return-void
.end method
