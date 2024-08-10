.class public abstract Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "AProgressLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M1:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "M2:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "D:",
        "Lcom/parrot/freeflight/util/DoubleBoundedState;",
        "E:",
        "Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry",
        "<TD;TM1;TM2;>;>",
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected final mInterpretedValueTextView:Landroid/widget/TextView;

.field private final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mSettingsNameTextView:Landroid/widget/TextView;

.field protected mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field protected final mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

.field protected final mValueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder<TM1;TM2;TD;TE;>;"
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    const v1, 0x7f0a04da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0a04d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0a04b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0a03db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/settings/widget/Slider;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    .line 55
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setFocusable(Z)V

    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setClickable(Z)V

    .line 60
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v2, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v2, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v2, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 106
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mResources:Landroid/content/res/Resources;

    .line 111
    new-instance v1, Lcom/parrot/freeflight/util/ui/MetricsServant;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)D
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->getValueToSend()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->handleOnKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->shouldSendValue()Z

    move-result v0

    return v0
.end method

.method private getValueToSend()D
    .locals 2

    .prologue
    .line 229
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder<TM1;TM2;TD;TE;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getValueFromSlider(I)D

    move-result-wide v0

    .line 232
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handleOnKey(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder<TM1;TM2;TD;TE;>;"
    const/16 v3, 0x15

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 201
    const/16 v2, 0x17

    if-eq p1, v2, :cond_0

    const/16 v2, 0x60

    if-ne p1, v2, :cond_2

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/widget/Slider;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/settings/widget/Slider;->setSelected(Z)V

    .line 214
    :goto_0
    return v1

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/widget/Slider;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    if-eqz v2, :cond_5

    if-eq p1, v3, :cond_3

    const/16 v2, 0x16

    if-ne p1, v2, :cond_5

    .line 206
    :cond_3
    if-ne p1, v3, :cond_4

    .line 207
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getGamePadStep()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/widget/Slider;->getMax()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getGamePadStep()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/widget/Slider;->getMax()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    goto :goto_0

    :cond_5
    move v1, v0

    .line 214
    goto :goto_0
.end method

.method private setDisplayedValue(DLcom/parrot/freeflight/util/ui/Unit;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "value"    # D
    .param p3, "unit"    # Lcom/parrot/freeflight/util/ui/Unit;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "unitAsString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "isDecimal"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder<TM1;TM2;TD;TE;>;"
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 184
    if-nez p3, :cond_2

    .line 185
    if-eqz p5, :cond_1

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1f %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, v7}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "displayedValue":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    return-void

    .line 188
    .end local v0    # "displayedValue":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.0f %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, v6}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayedValue":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v0    # "displayedValue":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v1, p1, p2, p3, p5}, Lcom/parrot/freeflight/util/ui/MetricsServant;->format(DLcom/parrot/freeflight/util/ui/Unit;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayedValue":Ljava/lang/String;
    goto :goto_0
.end method

.method private setItemEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 237
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder<TM1;TM2;TD;TE;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/settings/widget/Slider;->setEnabled(Z)V

    .line 241
    return-void
.end method

.method private shouldSendValue()Z
    .locals 8

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder<TM1;TM2;TD;TE;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 219
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    if-eqz v6, :cond_1

    .line 220
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    iget-object v7, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v7}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getValueFromSlider(I)D

    move-result-wide v6

    invoke-static {v6, v7, v4}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v0

    .line 221
    .local v0, "progressBarValue":D
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    invoke-virtual {v6}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v6

    invoke-static {v6, v7, v4}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v2

    .line 222
    .local v2, "savedValue":D
    cmpl-double v6, v0, v2

    if-eqz v6, :cond_0

    .line 224
    .end local v0    # "progressBarValue":D
    .end local v2    # "savedValue":D
    :goto_0
    return v4

    .restart local v0    # "progressBarValue":D
    .restart local v2    # "savedValue":D
    :cond_0
    move v4, v5

    .line 222
    goto :goto_0

    .end local v0    # "progressBarValue":D
    .end local v2    # "savedValue":D
    :cond_1
    move v4, v5

    .line 224
    goto :goto_0
.end method


# virtual methods
.method protected onProgressChanged(I)V
    .locals 12
    .param p1, "progress"    # I

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder<TM1;TM2;TD;TE;>;"
    const/4 v7, 0x0

    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    if-nez v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getStep()D

    move-result-wide v8

    .line 164
    .local v8, "step":D
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getValueFromSlider(I)D

    move-result-wide v2

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    .line 165
    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getUnit()Lcom/parrot/freeflight/util/ui/Unit;

    move-result-object v4

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getUnitAsString()Ljava/lang/String;

    move-result-object v5

    double-to-int v1, v8

    int-to-double v10, v1

    cmpl-double v1, v8, v10

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    :goto_1
    move-object v1, p0

    .line 164
    invoke-direct/range {v1 .. v6}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->setDisplayedValue(DLcom/parrot/freeflight/util/ui/Unit;Ljava/lang/String;Z)V

    .line 166
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    invoke-direct {p0}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->getValueToSend()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getInterpretedValue(D)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "interpretedValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "interpretedValue":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 165
    goto :goto_1

    .line 171
    .restart local v0    # "interpretedValue":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;)V
    .locals 20
    .param p1    # Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder<TM1;TM2;TD;TE;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;, "TE;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v9

    .line 124
    .local v9, "state":Lcom/parrot/freeflight/util/DoubleBoundedState;, "TD;"
    invoke-virtual {v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v10

    .line 125
    .local v10, "max":D
    invoke-virtual {v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v12

    .line 126
    .local v12, "min":D
    invoke-virtual {v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v4

    .line 127
    .local v4, "current":D
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getStep()D

    move-result-wide v14

    .line 128
    .local v14, "step":D
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getInterpretedValue()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "interpretedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->isSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->setItemEnabled(Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    sub-double v6, v10, v12

    div-double/2addr v6, v14

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/settings/widget/Slider;->setMax(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    invoke-virtual {v6}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getSliderValueFromValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    .line 135
    if-eqz v2, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getInterpretedValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getUnit()Lcom/parrot/freeflight/util/ui/Unit;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->getUnitAsString()Ljava/lang/String;

    move-result-object v7

    double-to-int v3, v14

    int-to-double v0, v3

    move-wide/from16 v18, v0

    cmpl-double v3, v14, v18

    if-eqz v3, :cond_1

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->setDisplayedValue(DLcom/parrot/freeflight/util/ui/Unit;Ljava/lang/String;Z)V

    .line 149
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->isEditable()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/settings/widget/Slider;->setEnabled(Z)V

    .line 150
    return-void

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 143
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->setItemEnabled(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f110595

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "unusedString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder<TM1;TM2;TD;TE;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;)V

    return-void
.end method
