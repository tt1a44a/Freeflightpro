.class public Lcom/parrot/freeflight/settings/BebopSettingsBuilder;
.super Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;
.source "BebopSettingsBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
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

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;

    const v1, 0x7f110529

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    new-instance v5, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    invoke-direct {v5, p1}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;-><init>(Lcom/parrot/freeflight/settings/BebopSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Landroid/content/Context;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v7
.end method

.method protected isFpvSupported()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method
