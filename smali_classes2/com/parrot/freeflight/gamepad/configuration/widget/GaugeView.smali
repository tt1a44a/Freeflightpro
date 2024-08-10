.class public abstract Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;
.super Landroid/view/View;
.source "GaugeView.java"


# static fields
.field private static final NEUTRAL_THRESHOLD:I = 0xdc


# instance fields
.field protected final mBackgroundPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mBackgroundRect:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mForegroundPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mPlusMinusSignsMargin:F

.field protected final mPlusMinusSignsPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mPlusMinusSignsSize:F

.field protected mValue:I

.field protected mValueNeutral:Z

.field protected mZeroMarkPadding:F

.field protected final mZeroMarkPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v4, 0x7f0500a3

    const/4 v3, 0x1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mForegroundPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mForegroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0500d1

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mZeroMarkPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mZeroMarkPaint:Landroid/graphics/Paint;

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mZeroMarkPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mZeroMarkPaint:Landroid/graphics/Paint;

    const v2, 0x7f0601d7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mPlusMinusSignsPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mPlusMinusSignsPaint:Landroid/graphics/Paint;

    const v2, 0x7f050146

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mPlusMinusSignsPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mPlusMinusSignsPaint:Landroid/graphics/Paint;

    const v2, 0x7f0601d4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mBackgroundRect:Landroid/graphics/RectF;

    .line 60
    const v1, 0x7f0601d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mZeroMarkPadding:F

    .line 61
    const v1, 0x7f0601d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mPlusMinusSignsSize:F

    .line 62
    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mPlusMinusSignsMargin:F

    .line 64
    iput-boolean v3, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mValueNeutral:Z

    .line 65
    return-void
.end method


# virtual methods
.method public setValue(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 68
    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mValue:I

    if-eq v3, p1, :cond_1

    .line 69
    iput p1, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mValue:I

    .line 70
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xdc

    if-ge v3, v4, :cond_2

    const/4 v2, 0x1

    .line 71
    .local v2, "valueNeutral":Z
    :goto_0
    iget-boolean v3, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mValueNeutral:Z

    if-eq v3, v2, :cond_0

    .line 72
    iput-boolean v2, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mValueNeutral:Z

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    .local v1, "context":Landroid/content/Context;
    if-eqz v2, :cond_3

    const v3, 0x7f0500a3

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 75
    .local v0, "color":I
    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->mZeroMarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    .end local v0    # "color":I
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/widget/GaugeView;->invalidate()V

    .line 79
    .end local v2    # "valueNeutral":Z
    :cond_1
    return-void

    .line 70
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 74
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "valueNeutral":Z
    :cond_3
    const v3, 0x7f050146

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1
.end method
