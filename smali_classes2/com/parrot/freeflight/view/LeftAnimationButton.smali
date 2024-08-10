.class public Lcom/parrot/freeflight/view/LeftAnimationButton;
.super Lcom/parrot/freeflight/view/AAnimationButton;
.source "LeftAnimationButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/view/AAnimationButton;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/view/AAnimationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/view/AAnimationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0c00f8

    return v0
.end method

.method protected getTranslateAnimation(Landroid/view/View;II)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "origMargin"    # I
    .param p3, "destMargin"    # I

    .prologue
    .line 47
    sub-int v1, p3, p2

    .line 49
    .local v1, "diff":I
    new-instance v0, Lcom/parrot/freeflight/view/LeftAnimationButton$1;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/parrot/freeflight/view/LeftAnimationButton$1;-><init>(Lcom/parrot/freeflight/view/LeftAnimationButton;Landroid/view/View;II)V

    .line 57
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 58
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 59
    return-object v0
.end method
