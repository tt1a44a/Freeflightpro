.class public Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;
.super Landroid/widget/ImageView;
.source "SquareImageView.java"


# instance fields
.field private mHeightWidthRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->mHeightWidthRatio:F

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->mHeightWidthRatio:F

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->mHeightWidthRatio:F

    .line 21
    return-void
.end method


# virtual methods
.method public getHeightWidthRatio()F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->mHeightWidthRatio:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 34
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->mHeightWidthRatio:F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->setMeasuredDimension(II)V

    .line 35
    return-void
.end method

.method public setHeightWidthRatio(F)V
    .locals 0
    .param p1, "heightWidthRatio"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->mHeightWidthRatio:F

    .line 29
    return-void
.end method
