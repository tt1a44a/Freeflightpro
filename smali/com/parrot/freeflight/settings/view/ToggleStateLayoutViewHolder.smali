.class public Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "ToggleStateLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$AccessorySelected;
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
        "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final UNKNOWN:I = -0x1


# instance fields
.field public final mDescriptionTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastSelectedRadioButton:I

.field public final mLeftRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
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

.field private mToggleSettingsEntry:Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry",
            "<TT;TU;>;"
        }
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
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLastSelectedRadioButton:I

    .line 48
    const v1, 0x7f0a04da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0a0394

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 50
    const v1, 0x7f0a0397

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 51
    const v1, 0x7f0a03a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 52
    const v1, 0x7f0a044f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 79
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    .prologue
    .line 20
    iget v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLastSelectedRadioButton:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLastSelectedRadioButton:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->setEnableRadioButtons(Z)V

    return-void
.end method

.method private setEnableRadioButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 118
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 120
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;)V
    .locals 5
    .param p1    # Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TT;TU;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    .line 86
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->getRightStateName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->getLeftStateName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/util/ToggleState;->getToggleState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0a0397

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 95
    iput v1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLastSelectedRadioButton:I

    .line 96
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->getAlternateRightDescription()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    if-nez v0, :cond_0

    .line 104
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    if-eqz v0, :cond_2

    .line 108
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/util/ToggleState;->isSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->setEnableRadioButtons(Z)V

    .line 115
    return-void

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0a0394

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 99
    iput v2, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLastSelectedRadioButton:I

    goto :goto_0

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 114
    goto :goto_2
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;)V

    return-void
.end method
