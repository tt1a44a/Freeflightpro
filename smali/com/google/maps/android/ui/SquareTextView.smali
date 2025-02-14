.class public Lcom/google/maps/android/ui/SquareTextView;
.super Landroid/widget/TextView;
.source "SquareTextView.java"


# instance fields
.field private mOffsetLeft:I

.field private mOffsetTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 26
    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 26
    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 26
    iput v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 58
    iget v0, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 43
    invoke-virtual {p0}, Lcom/google/maps/android/ui/SquareTextView;->getMeasuredWidth()I

    move-result v2

    .line 44
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/maps/android/ui/SquareTextView;->getMeasuredHeight()I

    move-result v1

    .line 45
    .local v1, "height":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 46
    .local v0, "dimension":I
    if-le v2, v1, :cond_0

    .line 47
    sub-int v3, v2, v1

    iput v3, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 48
    iput v4, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    .line 53
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/google/maps/android/ui/SquareTextView;->setMeasuredDimension(II)V

    .line 54
    return-void

    .line 50
    :cond_0
    iput v4, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetTop:I

    .line 51
    sub-int v3, v1, v2

    iput v3, p0, Lcom/google/maps/android/ui/SquareTextView;->mOffsetLeft:I

    goto :goto_0
.end method
