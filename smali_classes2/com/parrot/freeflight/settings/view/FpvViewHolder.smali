.class public Lcom/parrot/freeflight/settings/view/FpvViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "FpvViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DroneModel;",
        "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAutoFpvModeRadioButton:Landroid/widget/RadioButton;

.field private final mConfigureButton:Landroid/widget/Button;

.field private final mFpvModeRadioGroup:Landroid/widget/RadioGroup;

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGlassesType1RadioButton:Landroid/widget/RadioButton;

.field private final mGlassesType2RadioButton:Landroid/widget/RadioButton;

.field private final mGlassesTypeRadioGroup:Landroid/widget/RadioGroup;

.field private final mManualFpvModeRadioButton:Landroid/widget/RadioButton;

.field private mSettingsEntry:Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DroneModel;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            ">;"
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
    .line 39
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    const v1, 0x7f0a03a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mFpvModeRadioGroup:Landroid/widget/RadioGroup;

    .line 42
    const v1, 0x7f0a039d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mManualFpvModeRadioButton:Landroid/widget/RadioButton;

    .line 43
    const v1, 0x7f0a039c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mAutoFpvModeRadioButton:Landroid/widget/RadioButton;

    .line 44
    const v1, 0x7f0a005f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mConfigureButton:Landroid/widget/Button;

    .line 45
    const v1, 0x7f0a03a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesTypeRadioGroup:Landroid/widget/RadioGroup;

    .line 46
    const v1, 0x7f0a039e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType1RadioButton:Landroid/widget/RadioButton;

    .line 47
    const v1, 0x7f0a039f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType2RadioButton:Landroid/widget/RadioButton;

    .line 49
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mManualFpvModeRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/FpvViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/FpvViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mAutoFpvModeRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/FpvViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/FpvViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 69
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mConfigureButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/settings/view/FpvViewHolder$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/FpvViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType1RadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/FpvViewHolder$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/FpvViewHolder$4;-><init>(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType2RadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/FpvViewHolder$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/FpvViewHolder$5;-><init>(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0a04da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mManualFpvModeRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mAutoFpvModeRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mConfigureButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    const v1, 0x7f0a0471

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType1RadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType2RadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mManualFpvModeRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mSettingsEntry:Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mAutoFpvModeRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Lcom/parrot/freeflight/gamepad/GamePadManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType1RadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType2RadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;)V
    .locals 6
    .param p1    # Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DroneModel;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "value":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;>;"
    const/4 v3, 0x1

    .line 110
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mSettingsEntry:Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;

    .line 112
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;

    .line 114
    .local v2, "fpvState":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;
    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->isAutoLaunchEnabled()Z

    move-result v0

    .line 115
    .local v0, "autoLaunch":Z
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mFpvModeRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    const v4, 0x7f0a039c

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 117
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mConfigureButton:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->isEyesCalibrationEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->getGlassesType()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 120
    .local v3, "type1":Z
    :goto_1
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesTypeRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v3, :cond_2

    const v4, 0x7f0a039e

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 122
    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->isGlassesTypeEditable()Z

    move-result v1

    .line 123
    .local v1, "editable":Z
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 124
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->mGlassesType2RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 125
    return-void

    .line 115
    .end local v1    # "editable":Z
    .end local v3    # "type1":Z
    :cond_0
    const v4, 0x7f0a039d

    goto :goto_0

    .line 119
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 120
    .restart local v3    # "type1":Z
    :cond_2
    const v4, 0x7f0a039f

    goto :goto_2
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    check-cast p1, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->update(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;)V

    return-void
.end method
