.class public Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;
.super Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;
.source "OneWayGaugeView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->getWidth()I

    move-result v13

    .line 24
    .local v13, "width":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->getHeight()I

    move-result v10

    .line 25
    .local v10, "height":I
    int-to-float v0, v10

    div-float v8, v0, v7

    .line 26
    .local v8, "halfHeight":F
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mZeroMarkPadding:F

    sub-float v11, v8, v0

    .line 27
    .local v11, "radius":F
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mPlusMinusSignsSize:F

    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mPlusMinusSignsMargin:F

    add-float v1, v0, v3

    .line 28
    .local v1, "margin":F
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mValue:I

    int-to-float v0, v0

    int-to-float v3, v13

    mul-float v4, v7, v1

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    const v3, 0x46fffe00    # 32767.0f

    div-float/2addr v0, v3

    add-float v12, v0, v1

    .line 31
    .local v12, "value":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mZeroMarkPadding:F

    int-to-float v4, v13

    sub-float/2addr v4, v1

    int-to-float v5, v10

    iget v6, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mZeroMarkPadding:F

    sub-float/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 33
    int-to-float v0, v13

    int-to-float v3, v10

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 37
    int-to-float v0, v10

    invoke-virtual {p1, v1, v2, v12, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    int-to-float v4, v10

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mZeroMarkPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mPlusMinusSignsSize:F

    div-float v9, v0, v7

    .line 46
    .local v9, "halfSignsSize":F
    int-to-float v0, v13

    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mPlusMinusSignsSize:F

    sub-float v3, v0, v2

    int-to-float v5, v13

    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mPlusMinusSignsPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v8

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 47
    int-to-float v0, v13

    sub-float v3, v0, v9

    sub-float v4, v8, v9

    int-to-float v0, v13

    sub-float v5, v0, v9

    add-float v6, v8, v9

    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->mPlusMinusSignsPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    return-void
.end method
