.class public Lcom/parrot/freeflight/flightdirector/view/MomentsView;
.super Landroid/view/View;
.source "MomentsView.java"


# instance fields
.field private mCirclePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHighlights:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->initPaint()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->initPaint()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->initPaint()V

    .line 38
    return-void
.end method

.method private initPaint()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->mCirclePaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0500a3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->mHighlights:Ljava/util/List;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->mVideoDuration:I

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->mHighlights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvdronecomposer/HighlightSegment;

    .line 88
    .local v1, "highlight":Lcom/muvee/mvdronecomposer/HighlightSegment;
    iget-wide v4, v1, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    iget-wide v6, v1, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 89
    .local v0, "center":F
    iget v4, p0, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->mVideoDuration:I

    int-to-float v4, v4

    div-float v4, v0, v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v4, v5

    .line 90
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 93
    .end local v0    # "center":F
    .end local v1    # "highlight":Lcom/muvee/mvdronecomposer/HighlightSegment;
    .end local v2    # "x":F
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 57
    const/16 v1, 0x64

    .line 58
    .local v1, "desiredWidth":I
    const/16 v0, 0x64

    .line 59
    .local v0, "desiredHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 60
    .local v6, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 61
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 62
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 65
    .local v4, "heightSize":I
    if-ne v6, v9, :cond_0

    .line 66
    move v5, v7

    .line 72
    .local v5, "width":I
    :goto_0
    if-ne v3, v9, :cond_2

    .line 73
    move v2, v4

    .line 79
    .local v2, "height":I
    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->setMeasuredDimension(II)V

    .line 80
    return-void

    .line 67
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_0
    if-ne v6, v8, :cond_1

    .line 68
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .restart local v5    # "width":I
    goto :goto_0

    .line 70
    .end local v5    # "width":I
    :cond_1
    move v5, v1

    .restart local v5    # "width":I
    goto :goto_0

    .line 74
    :cond_2
    if-ne v3, v8, :cond_3

    .line 75
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2    # "height":I
    goto :goto_1

    .line 77
    .end local v2    # "height":I
    :cond_3
    move v2, v0

    .restart local v2    # "height":I
    goto :goto_1
.end method

.method public setHighlights(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "highlights":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->mHighlights:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->invalidate()V

    .line 48
    return-void
.end method

.method public setVideoDuration(I)V
    .locals 0
    .param p1, "videoDuration"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->mVideoDuration:I

    .line 42
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->invalidate()V

    .line 43
    return-void
.end method
