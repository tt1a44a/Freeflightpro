.class public Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;
.super Landroid/view/View;
.source "ThirdRulesView.java"


# static fields
.field private static final LINE_WIDTH:I = 0x1


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->init()V

    .line 25
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
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->init()V

    .line 30
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
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->mLinePaint:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05003e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 45
    .local v0, "lineColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x40400000    # 3.0f

    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v8

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v8

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float v2, v0, v8

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float v4, v0, v8

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 54
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v8

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v8

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->mLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float v3, v0, v8

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float v5, v0, v8

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->mLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    return-void
.end method
