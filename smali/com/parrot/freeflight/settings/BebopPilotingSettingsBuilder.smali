.class public Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;
.super Ljava/lang/Object;
.source "BebopPilotingSettingsBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;->isFilmCurrentMode(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;->isRacingCurrentMode(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Z

    move-result v0

    return v0
.end method

.method private isFilmCurrentMode(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Z
    .locals 1
    .param p1, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getPresetModePreference()Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRacingCurrentMode(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Z
    .locals 2
    .param p1, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 292
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getPresetModePreference()Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildPilotingFilmEntries(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "presetsValues"    # Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 29
    .local v10, "resources":Landroid/content/res/Resources;
    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x7

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$1;

    const v1, 0x7f110569

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110192

    .line 32
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$1;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 31
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;

    const v1, 0x7f110567

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110191

    .line 56
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 55
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$3;

    const v1, 0x7f11056a

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1103b4

    .line 80
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    move-object v1, p0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$3;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 79
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$4;

    const v1, 0x7f110568

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110191

    .line 104
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$4;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 103
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getBankedTurnedState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/ToggleState;->isSettingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$5;

    const v1, 0x7f110533

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 129
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$5;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 128
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-object v9
.end method

.method public buildPilotingRacingEntries(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "presetsValues"    # Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 166
    .local v10, "resources":Landroid/content/res/Resources;
    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x7

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$6;

    const v1, 0x7f110569

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110192

    .line 169
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$6;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 168
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$7;

    const v1, 0x7f110567

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110191

    .line 193
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$7;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 192
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$8;

    const v1, 0x7f11056a

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1103b4

    .line 217
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    move-object v1, p0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$8;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 216
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$9;

    const v1, 0x7f110568

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110191

    .line 241
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$9;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 240
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getBankedTurnedState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/ToggleState;->isSettingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;

    const v1, 0x7f110533

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 266
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;-><init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 265
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    return-object v9
.end method
