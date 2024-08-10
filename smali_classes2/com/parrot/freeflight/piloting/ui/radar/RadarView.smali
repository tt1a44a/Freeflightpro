.class public Lcom/parrot/freeflight/piloting/ui/radar/RadarView;
.super Landroid/widget/ImageView;
.source "RadarView.java"


# static fields
.field private static final DEFAULT_ANGLE:I = 0x1e

.field private static final DEFAULT_STROKE:I = 0x3

.field private static final SMALL_LINE_STROKE:I = 0x1


# instance fields
.field private mAngle:I

.field private final mPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRadarEnabled:Z

.field private final mRectF:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStroke:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x1e

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mAngle:I

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mStroke:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRectF:Landroid/graphics/RectF;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRadarEnabled:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/16 v0, 0x1e

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mAngle:I

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mStroke:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRectF:Landroid/graphics/RectF;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRadarEnabled:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/16 v0, 0x1e

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mAngle:I

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mStroke:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRectF:Landroid/graphics/RectF;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRadarEnabled:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mAngle:I

    return v0
.end method

.method public isRadarEnabled()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRadarEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 46
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->getHeight()I

    move-result v14

    .line 49
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->getWidth()I

    move-result v18

    .line 50
    .local v18, "width":I
    div-int/lit8 v12, v18, 0x2

    .line 51
    .local v12, "centerX":I
    div-int/lit8 v13, v14, 0x2

    .line 52
    .local v13, "centerY":I
    div-int/lit8 v1, v18, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mStroke:I

    sub-int v16, v1, v2

    .line 53
    .local v16, "radius":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 54
    .local v17, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b000b

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 55
    .local v10, "alphaValue":I
    const v1, 0x7f0602d4

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 56
    .local v3, "edgeMargin":F
    const v1, 0x7f0602d2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 57
    .local v11, "centerCircleRadius":F
    const v1, 0x7f0602d5

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 59
    .local v15, "innerLineLenght":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    int-to-float v1, v12

    int-to-float v2, v13

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    int-to-float v2, v12

    int-to-float v4, v12

    int-to-float v1, v14

    sub-float v5, v1, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    int-to-float v4, v13

    move/from16 v0, v18

    int-to-float v1, v0

    sub-float v5, v1, v3

    int-to-float v6, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    int-to-float v1, v12

    int-to-float v2, v13

    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mStroke:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    int-to-float v1, v12

    int-to-float v2, v13

    move/from16 v0, v16

    int-to-float v4, v0

    sub-float/2addr v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 79
    int-to-float v2, v12

    int-to-float v4, v12

    add-float v5, v3, v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 80
    move/from16 v0, v18

    int-to-float v1, v0

    sub-float v5, v1, v3

    int-to-float v6, v13

    move/from16 v0, v18

    int-to-float v1, v0

    sub-float/2addr v1, v3

    sub-float v7, v1, v15

    int-to-float v8, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 81
    int-to-float v5, v12

    int-to-float v1, v14

    sub-float v6, v1, v3

    int-to-float v7, v12

    int-to-float v1, v14

    sub-float/2addr v1, v3

    sub-float v8, v1, v15

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    int-to-float v4, v13

    add-float v5, v3, v15

    int-to-float v6, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRadarEnabled:Z

    if-eqz v1, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mStroke:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mStroke:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mStroke:I

    sub-int v5, v18, v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mStroke:I

    sub-int v6, v14, v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0500fc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mAngle:I

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, -0x5a

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mAngle:I

    int-to-float v7, v1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0500fc

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    div-int/lit8 v1, v18, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v14, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    div-int/lit8 v1, v18, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v14, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setAngle(I)V
    .locals 1
    .param p1, "angle"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mAngle:I

    if-eq v0, p1, :cond_0

    .line 110
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mAngle:I

    .line 111
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->invalidate()V

    .line 113
    :cond_0
    return-void
.end method

.method public setRadarEnabled(Z)V
    .locals 1
    .param p1, "radarEnabled"    # Z

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRadarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 117
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->mRadarEnabled:Z

    .line 118
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarView;->invalidate()V

    .line 120
    :cond_0
    return-void
.end method
