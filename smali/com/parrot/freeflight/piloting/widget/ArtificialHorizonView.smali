.class public Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;
.super Landroid/view/View;
.source "ArtificialHorizonView.java"


# static fields
.field private static final PITCH_INDICATOR_COORDINATE_COUNT:I = 0x4

.field private static final ROLL_ARC_ANGLE:I = 0x1e

.field private static final ROLL_INDICATOR_COORDINATE_COUNT:I = 0x8


# instance fields
.field private final mCameraIndicatorPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCameraIndicatorRadius:I

.field private mCameraTranslationX:F

.field private mCameraTranslationY:F

.field private mCenterX:I

.field private mCenterY:I

.field private mHalfUsableHeight:I

.field private mHalfUsableWidth:I

.field private mHalfVerticalMarkCount:I

.field private mMargin:I

.field private final mMatrix:Landroid/graphics/Matrix;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPitchIndicatorPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPitchIndicatorPoints:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPitchIndicatorSize:I

.field private mPitchTranslationY:F

.field private mRollAngle:F

.field private mRollArcRadius:I

.field private final mRollArcsBounds:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRollIndicatorPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRollIndicatorPoints:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRollIndicatorRadius:I

.field private mRollIndicatorSize:I

.field private mVerticalMarksPoints:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalMarksSize:I

.field private mVerticalMarksSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMargin:I

    .line 75
    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcRadius:I

    .line 76
    const v1, 0x7f060079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorRadius:I

    .line 77
    const v1, 0x7f06007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorSize:I

    .line 78
    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorSize:I

    .line 79
    const v1, 0x7f06007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksSize:I

    .line 80
    const v1, 0x7f06007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksSpace:I

    .line 81
    const v1, 0x7f060073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorRadius:I

    .line 83
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    .line 84
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPoints:[F

    .line 86
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcsBounds:Landroid/graphics/RectF;

    .line 87
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    .line 89
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPaint:Landroid/graphics/Paint;

    const v2, 0x7f06007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 93
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPaint:Landroid/graphics/Paint;

    const v2, 0x7f060077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050138

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorPaint:Landroid/graphics/Paint;

    const v2, 0x7f060074

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 105
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksPoints:[F

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorRadius:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v4

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    int-to-float v1, v1

    aput v1, v0, v11

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v12

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    const/4 v1, 0x4

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorRadius:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    aput v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    const/4 v1, 0x6

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorRadius:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorSize:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    aput v2, v0, v1

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    const/4 v1, 0x7

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPoints:[F

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v4

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPoints:[F

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    int-to-float v1, v1

    aput v1, v0, v11

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPoints:[F

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v12

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPoints:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 149
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v7, v0

    .line 150
    .local v7, "markX1":F
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v8, v0

    .line 151
    .local v8, "markX2":F
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfVerticalMarkCount:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksSpace:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v9, v0

    .line 152
    .local v9, "markY":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksPoints:[F

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksPoints:[F

    aput v7, v0, v6

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksPoints:[F

    add-int/lit8 v1, v6, 0x1

    aput v9, v0, v1

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksPoints:[F

    add-int/lit8 v1, v6, 0x2

    aput v8, v0, v1

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksPoints:[F

    add-int/lit8 v1, v6, 0x3

    aput v9, v0, v1

    .line 157
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksSpace:I

    int-to-float v0, v0

    add-float/2addr v9, v0

    .line 152
    add-int/lit8 v6, v6, 0x4

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollAngle:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    int-to-float v2, v2

    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchTranslationY:F

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraTranslationX:F

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksPoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 172
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcsBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3e100000    # -30.0f

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 173
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcsBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43160000    # 150.0f

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPoints:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPoints:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksPoints:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 179
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraTranslationX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraTranslationY:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 181
    .end local v6    # "i":I
    .end local v7    # "markX1":F
    .end local v8    # "markX2":F
    .end local v9    # "markY":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 111
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 112
    .local v0, "centerX":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 114
    .local v1, "centerY":I
    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    if-eq v1, v2, :cond_1

    .line 115
    :cond_0
    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    .line 116
    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    .line 117
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcsBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcRadius:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 118
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcsBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 119
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcsBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcRadius:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 120
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcsBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 122
    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterX:I

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfUsableWidth:I

    .line 123
    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCenterY:I

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMargin:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfUsableHeight:I

    .line 125
    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfUsableHeight:I

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksSpace:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfVerticalMarkCount:I

    .line 126
    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfVerticalMarkCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksPoints:[F

    .line 128
    :cond_1
    return-void
.end method

.method public setCameraTranslationX(F)V
    .locals 1
    .param p1, "cameraTranslationX"    # F

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setCameraTranslationX(FZ)V

    .line 211
    return-void
.end method

.method public setCameraTranslationX(FZ)V
    .locals 2
    .param p1, "cameraTranslationX"    # F
    .param p2, "refreshView"    # Z

    .prologue
    .line 214
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfUsableWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfUsableWidth:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraTranslationX:F

    .line 215
    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->invalidate()V

    .line 218
    :cond_0
    return-void
.end method

.method public setCameraTranslationY(F)V
    .locals 1
    .param p1, "cameraTranslationY"    # F

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setCameraTranslationY(FZ)V

    .line 223
    return-void
.end method

.method public setCameraTranslationY(FZ)V
    .locals 2
    .param p1, "cameraTranslationY"    # F
    .param p2, "refreshView"    # Z

    .prologue
    .line 226
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfUsableHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfUsableHeight:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraTranslationY:F

    .line 227
    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->invalidate()V

    .line 230
    :cond_0
    return-void
.end method

.method public setDimensions(IIIIIIII)V
    .locals 0
    .param p1, "margin"    # I
    .param p2, "rollArcRadius"    # I
    .param p3, "rollIndicatorRadius"    # I
    .param p4, "rollIndicatorSize"    # I
    .param p5, "pitchIndicatorSize"    # I
    .param p6, "verticalMarksSize"    # I
    .param p7, "verticalMarksSpace"    # I
    .param p8, "cameraIndicatorRadius"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mMargin:I

    .line 236
    iput p2, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollArcRadius:I

    .line 237
    iput p3, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorRadius:I

    .line 238
    iput p4, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollIndicatorSize:I

    .line 239
    iput p5, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchIndicatorSize:I

    .line 240
    iput p6, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksSize:I

    .line 241
    iput p7, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mVerticalMarksSpace:I

    .line 242
    iput p8, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mCameraIndicatorRadius:I

    .line 243
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->invalidate()V

    .line 244
    return-void
.end method

.method public setPitchTranslationY(F)V
    .locals 1
    .param p1, "pitchTranslationY"    # F

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setPitchTranslationY(FZ)V

    .line 198
    return-void
.end method

.method public setPitchTranslationY(FZ)V
    .locals 2
    .param p1, "pitchTranslationY"    # F
    .param p2, "refreshView"    # Z

    .prologue
    .line 201
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfUsableHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mHalfUsableHeight:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mPitchTranslationY:F

    .line 202
    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->invalidate()V

    .line 205
    :cond_0
    return-void
.end method

.method public setRollAngle(F)V
    .locals 1
    .param p1, "rollAngle"    # F

    .prologue
    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setRollAngle(FZ)V

    .line 186
    return-void
.end method

.method public setRollAngle(FZ)V
    .locals 0
    .param p1, "rollAngle"    # F
    .param p2, "refreshView"    # Z

    .prologue
    .line 189
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->mRollAngle:F

    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->invalidate()V

    .line 193
    :cond_0
    return-void
.end method
