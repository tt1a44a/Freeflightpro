.class public Lcom/parrot/freeflight/flightdirector/view/FullHDLayout;
.super Landroid/widget/FrameLayout;
.source "FullHDLayout.java"


# instance fields
.field private final mScale:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    const-wide v0, 0x3ffc71c71c734e0cL    # 1.7777777778

    iput-wide v0, p0, Lcom/parrot/freeflight/flightdirector/view/FullHDLayout;->mScale:D

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const-wide v0, 0x3ffc71c71c734e0cL    # 1.7777777778

    iput-wide v0, p0, Lcom/parrot/freeflight/flightdirector/view/FullHDLayout;->mScale:D

    .line 16
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const-wide v6, 0x3ffc71c71c734e0cL    # 1.7777777778

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 20
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 21
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 23
    .local v0, "height":I
    int-to-double v2, v0

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-le v1, v2, :cond_0

    .line 24
    int-to-double v2, v0

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 29
    :goto_0
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 30
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 29
    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 31
    return-void

    .line 26
    :cond_0
    int-to-double v2, v1

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    goto :goto_0
.end method
