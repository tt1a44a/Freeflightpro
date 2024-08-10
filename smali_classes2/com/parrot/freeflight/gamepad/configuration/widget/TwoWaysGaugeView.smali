.class public Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;
.super Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;
.source "TwoWaysGaugeView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->getWidth()I

    move-result v15

    .line 24
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->getHeight()I

    move-result v11

    .line 25
    .local v11, "height":I
    int-to-float v1, v15

    const/high16 v3, 0x40000000    # 2.0f

    div-float v2, v1, v3

    .line 26
    .local v2, "halfWidth":F
    int-to-float v1, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v1, v3

    .line 27
    .local v9, "halfHeight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mZeroMarkPadding:F

    sub-float v13, v9, v1

    .line 28
    .local v13, "radius":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mPlusMinusSignsSize:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mPlusMinusSignsMargin:F

    add-float v12, v1, v3

    .line 29
    .local v12, "margin":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mValue:I

    int-to-float v1, v1

    sub-float v3, v2, v12

    mul-float/2addr v1, v3

    const v3, 0x46fffe00    # 32767.0f

    div-float/2addr v1, v3

    add-float v14, v1, v2

    .line 32
    .local v14, "value":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mZeroMarkPadding:F

    int-to-float v4, v15

    sub-float/2addr v4, v12

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mZeroMarkPadding:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v12, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13, v13, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v3, 0x0

    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    int-to-float v5, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13, v13, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    const/4 v3, 0x0

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mZeroMarkPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mPlusMinusSignsSize:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mPlusMinusSignsPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mPlusMinusSignsSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v1, v3

    .line 49
    .local v10, "halfSignsSize":F
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mPlusMinusSignsSize:F

    sub-float v4, v1, v3

    int-to-float v6, v15

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mPlusMinusSignsPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    int-to-float v1, v15

    sub-float v4, v1, v10

    sub-float v5, v9, v10

    int-to-float v1, v15

    sub-float v6, v1, v10

    add-float v7, v9, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->mPlusMinusSignsPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    return-void
.end method
