.class public Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "RadioButtonSettingsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$RadioButtonPosition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# static fields
.field public static final CENTER:I = 0x1

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final UNKNOWN:I = -0x1


# instance fields
.field public final mCenterRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final mDescriptionTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastSelectedRadioButton:I

.field public final mLeftRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field public final mRadioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final mRightRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final mSettingsNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    .local p0, "this":Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;, "Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLastSelectedRadioButton:I

    .line 52
    const v1, 0x7f0a04da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0a0394

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 54
    const v1, 0x7f0a0393

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    .line 55
    const v1, 0x7f0a0397

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 56
    const v1, 0x7f0a03a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 57
    const v1, 0x7f0a044f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 98
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    .prologue
    .line 21
    iget v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLastSelectedRadioButton:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLastSelectedRadioButton:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;)Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->setEnableRadioButtons(Z)V

    return-void
.end method

.method private setEnableRadioButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 143
    .local p0, "this":Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;, "Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;)V
    .locals 8
    .param p1    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;, "Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TT;TU;>;"
    const/4 v7, 0x0

    .line 108
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    .line 109
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    invoke-virtual {v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->getLeftButton()Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    move-result-object v3

    .line 110
    .local v3, "leftButton":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    invoke-virtual {v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->getCenterButton()Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    move-result-object v0

    .line 111
    .local v0, "centerButton":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    invoke-virtual {v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->getRightButton()Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    move-result-object v4

    .line 112
    .local v4, "rightButton":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    invoke-virtual {v6}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 116
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    invoke-virtual {v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "description":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 121
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    invoke-virtual {v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    .local v2, "intValue":I
    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->getValue()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 129
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v6, 0x7f0a0394

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 130
    iput v7, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLastSelectedRadioButton:I

    .line 139
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    invoke-virtual {v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->isEnabled()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->setEnableRadioButtons(Z)V

    .line 140
    return-void

    .line 124
    .end local v2    # "intValue":I
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 131
    .restart local v2    # "intValue":I
    :cond_3
    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->getValue()I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 132
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v6, 0x7f0a0397

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 133
    const/4 v5, 0x2

    iput v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLastSelectedRadioButton:I

    goto :goto_1

    .line 134
    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->getValue()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 135
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v6, 0x7f0a0393

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 136
    const/4 v5, 0x1

    iput v5, p0, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->mLastSelectedRadioButton:I

    goto :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;, "Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;)V

    return-void
.end method
