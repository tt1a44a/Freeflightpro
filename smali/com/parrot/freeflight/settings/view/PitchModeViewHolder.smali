.class public Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "PitchModeViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$ModeSelected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private mLastSelectedRadioButton:I

.field public final mLeftRadioButton:Landroid/widget/RadioButton;

.field private mPitchModeSettingsEntry:Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mRadioGroup:Landroid/widget/RadioGroup;

.field public final mRightRadioButton:Landroid/widget/RadioButton;

.field public final mSettingsNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLastSelectedRadioButton:I

    .line 43
    const v1, 0x7f0a04da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f0a0394

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 45
    const v1, 0x7f0a0397

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 46
    const v1, 0x7f0a03a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 48
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 72
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    .prologue
    .line 21
    iget v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLastSelectedRadioButton:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLastSelectedRadioButton:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;)Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mPitchModeSettingsEntry:Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->setEnableRadioButtons(Z)V

    return-void
.end method

.method private setEnableRadioButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 100
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;)V
    .locals 5
    .param p1    # Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "value":Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry<Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mPitchModeSettingsEntry:Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;

    .line 79
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;->getValue()Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->getPitchMode()I

    move-result v0

    .line 81
    .local v0, "direction":I
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mPitchModeSettingsEntry:Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f110586

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 84
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f110585

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 86
    if-nez v0, :cond_1

    .line 87
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0a0394

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 88
    iput v2, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLastSelectedRadioButton:I

    .line 94
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->setEnableRadioButtons(Z)V

    .line 95
    return-void

    .line 89
    :cond_1
    if-ne v0, v1, :cond_0

    .line 90
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0a0397

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 91
    iput v1, p0, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->mLastSelectedRadioButton:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 94
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
    check-cast p1, Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;->update(Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;)V

    return-void
.end method
