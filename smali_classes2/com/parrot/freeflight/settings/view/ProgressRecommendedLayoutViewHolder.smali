.class public Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;
.source "ProgressRecommendedLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M1:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "M2:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder",
        "<TM1;TM2;",
        "Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;",
        "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry",
        "<TM1;TM2;>;>;"
    }
.end annotation


# instance fields
.field private final mAboveRecommendedColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final mAboveRecommendedDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBelowRecommendedColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final mBelowRecommendedDrawable:Landroid/graphics/drawable/Drawable;

.field private mRecommendedValue:F

.field private final mRecommendedValueView:Landroid/view/View;

.field private final mSliderPaddingLeft:I

.field private final mSliderPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder<TM1;TM2;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    const v1, -0x39e3c400    # -9999.0f

    iput v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    .line 43
    const v1, 0x7f0a03dc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValueView:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0500a3

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mBelowRecommendedColor:I

    .line 48
    const v1, 0x7f0500e0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mAboveRecommendedColor:I

    .line 50
    const v1, 0x7f070509

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mBelowRecommendedDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    const v1, 0x7f0704f1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mAboveRecommendedDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06030a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSliderPaddingLeft:I

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060302

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSliderPaddingRight:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    .prologue
    .line 17
    iget v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    .prologue
    .line 17
    iget v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSliderPaddingLeft:I

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    .prologue
    .line 17
    iget v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSliderPaddingRight:I

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValueView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onProgressChanged(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 106
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder<TM1;TM2;>;"
    invoke-super {p0, p1}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->onProgressChanged(I)V

    .line 107
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    if-nez v2, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    check-cast v2, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->getValueFromSlider(I)D

    move-result-wide v0

    .line 113
    .local v0, "value":D
    iget v2, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    const v3, -0x39e3c400    # -9999.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mAboveRecommendedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mAboveRecommendedColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mBelowRecommendedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mBelowRecommendedColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic update(Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder<TM1;TM2;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;)V

    return-void
.end method

.method public update(Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;)V
    .locals 12
    .param p1    # Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry",
            "<TM1;TM2;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder<TM1;TM2;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry<TM1;TM2;>;"
    const v9, -0x39e3c400    # -9999.0f

    .line 65
    invoke-super {p0, p1}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;)V

    .line 67
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    .line 68
    .local v7, "state":Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    invoke-virtual {v7}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getMinBound()D

    move-result-wide v2

    .line 69
    .local v2, "min":D
    invoke-virtual {v7}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getMaxBound()D

    move-result-wide v4

    .line 72
    .local v4, "max":D
    iget v6, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    .line 73
    .local v6, "oldRecommendedValue":F
    invoke-virtual {v7}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getRecommendedValue()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    .line 74
    iget v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/widget/Slider;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    .line 77
    .local v8, "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;DD)V

    invoke-virtual {v8, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 94
    .end local v8    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    :goto_0
    iget v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v7}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getCurrentValue()D

    move-result-wide v0

    iget v9, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValue:F

    float-to-double v10, v9

    cmpl-double v0, v0, v10

    if-lez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mAboveRecommendedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mAboveRecommendedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    :goto_1
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mRecommendedValueView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mBelowRecommendedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mBelowRecommendedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder<TM1;TM2;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;)V

    return-void
.end method
