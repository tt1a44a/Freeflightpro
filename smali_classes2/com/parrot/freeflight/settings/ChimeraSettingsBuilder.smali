.class public Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder;
.super Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;
.source "ChimeraSettingsBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildPilotingSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
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
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 32
    .local v8, "resources":Landroid/content/res/Resources;
    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$1;

    const v1, 0x7f110569

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110192

    .line 35
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$1;-><init>(Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 34
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$2;

    const v1, 0x7f110567

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110191

    .line 53
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$2;-><init>(Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 52
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$3;

    const v1, 0x7f11056a

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1103b4

    .line 71
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$3;-><init>(Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 70
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$4;

    const v1, 0x7f110568

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110191

    .line 89
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$4;-><init>(Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 88
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getBankedTurnedState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/ToggleState;->isSettingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$5;

    const v1, 0x7f110533

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 108
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder$5;-><init>(Lcom/parrot/freeflight/settings/ChimeraSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 107
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    return-object v7
.end method

.method protected isFpvSupported()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
