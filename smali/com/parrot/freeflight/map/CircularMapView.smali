.class public Lcom/parrot/freeflight/map/CircularMapView;
.super Landroid/widget/RelativeLayout;
.source "CircularMapView.java"


# instance fields
.field private mIsRound:Z

.field private mPath:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mPath:Landroid/graphics/Path;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mIsRound:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mPath:Landroid/graphics/Path;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mIsRound:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mPath:Landroid/graphics/Path;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mIsRound:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mPath:Landroid/graphics/Path;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mIsRound:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/CircularMapView;->mIsRound:Z

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 50
    .local v0, "save":I
    iget-object v1, p0, Lcom/parrot/freeflight/map/CircularMapView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 51
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 56
    .end local v0    # "save":I
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public fullScreen()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mIsRound:Z

    .line 60
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/CircularMapView;->requestLayout()V

    .line 61
    return-void
.end method

.method public mini()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mIsRound:Z

    .line 65
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/CircularMapView;->requestLayout()V

    .line 66
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 37
    int-to-float v4, p1

    div-float v3, v4, v5

    .line 38
    .local v3, "halfWidth":F
    int-to-float v4, p2

    div-float v2, v4, v5

    .line 39
    .local v2, "halfHeight":F
    move v0, v3

    .line 40
    .local v0, "centerX":F
    move v1, v2

    .line 41
    .local v1, "centerY":F
    iget-object v4, p0, Lcom/parrot/freeflight/map/CircularMapView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 42
    iget-object v4, p0, Lcom/parrot/freeflight/map/CircularMapView;->mPath:Landroid/graphics/Path;

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 43
    iget-object v4, p0, Lcom/parrot/freeflight/map/CircularMapView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 44
    return-void
.end method

.method public tiny()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/CircularMapView;->mIsRound:Z

    .line 70
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/CircularMapView;->requestLayout()V

    .line 71
    return-void
.end method
