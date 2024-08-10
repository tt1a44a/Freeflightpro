.class public abstract Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;
.super Ljava/lang/Object;
.source "QuadcopterSettingsBuilder.java"

# interfaces
.implements Lcom/parrot/freeflight/settings/ISettingsBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/settings/ISettingsBuilder",
        "<",
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildInfosSettings(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 537
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 538
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 539
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v2, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$20;

    const v3, 0x7f1106c0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$20;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v2, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$21;

    const v3, 0x7f11033e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$21;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v2, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$22;

    const v3, 0x7f110532

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$22;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    return-object v0
.end method

.method private buildInterfaceSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
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
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 88
    .local v10, "resources":Landroid/content/res/Resources;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->isFpvEnabled()Z

    move-result v8

    .line 92
    .local v8, "fpvEnabled":Z
    if-nez v8, :cond_0

    .line 93
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$1;

    const v1, 0x7f110580

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$1;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->isFpvSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;

    const v1, 0x7f11029f

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$2;

    const v1, 0x7f110427

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f110429

    .line 113
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11042a

    .line 114
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f110428

    .line 115
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    invoke-direct {v5, v1, v6}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$2;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 112
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$3;

    const v1, 0x7f11042b

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11042d

    .line 134
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11042e

    .line 135
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11042c

    .line 136
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    invoke-direct {v5, v1, v6}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$3;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 133
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMotionDetectionState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/ToggleState;->isSettingAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$4;

    const v1, 0x7f11035c

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 156
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f11035b

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$4;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 155
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$5;

    const v1, 0x7f110693

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 176
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$5;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 175
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-object v9
.end method

.method private buildNetworkSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "remoteControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
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
    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 467
    .local v10, "resources":Landroid/content/res/Resources;
    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 468
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;

    const v1, 0x7f11056e

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1107ee

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$18;

    const v1, 0x7f110575

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f11057d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$18;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$19;

    const v1, 0x7f1107e1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f11056f

    .line 506
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f110570

    .line 507
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f110571

    .line 508
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f110576

    .line 509
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_0

    .line 510
    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->is5GHzBandAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_0
    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$19;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 505
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    return-object v9

    .line 510
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private buildRthSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
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
    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 306
    .local v9, "resources":Landroid/content/res/Resources;
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isFlightPlanSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getFlightPlanReturnHomeState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/ToggleState;->isSettingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getFlightPlanRegistrationManager()Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$11;

    const v1, 0x7f110652

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 311
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f110654

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f110653

    .line 312
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$11;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 310
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_0
    return-object v8
.end method

.method private buildSafetySettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;
    .locals 10
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
    .param p4, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
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
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
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
    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 202
    .local v9, "resources":Landroid/content/res/Resources;
    new-instance v8, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$6;

    const v1, 0x7f110554

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p4}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$6;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/RelativePositionController;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$7;

    const v1, 0x7f11058a

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110674

    .line 224
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$7;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 223
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;

    const v1, 0x7f110563

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110421

    .line 242
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DZLcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 241
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$9;

    const v1, 0x7f110564

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110421

    .line 265
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$9;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DZLcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 264
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$10;

    const v1, 0x7f110545

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 283
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$10;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 282
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-object v8
.end method

.method private buildVideoSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
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
    const/4 v12, 0x2

    const/4 v7, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 336
    .local v9, "resources":Landroid/content/res/Resources;
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getVideoResolutions()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 340
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;

    const v1, 0x7f11079a

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11051f

    .line 341
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v11}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11051e

    .line 342
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v10}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f11079b

    .line 343
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 340
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getRecordingMode()I

    move-result v0

    if-eq v0, v7, :cond_1

    .line 367
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$13;

    const v1, 0x7f110796

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f110799

    .line 368
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v11}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f110798

    .line 369
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v10}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f110797

    .line 370
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$13;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 367
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_1
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getFrameRate()I

    move-result v0

    if-eq v0, v7, :cond_2

    .line 394
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$14;

    const v1, 0x7f110791

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078a

    .line 395
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v10}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078b

    .line 396
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v11}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078c

    .line 397
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v12}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$14;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 394
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_2
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$15;

    const v1, 0x7f110662

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 421
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f11079c

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$15;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 420
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$16;

    const v1, 0x7f1100b4

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078d

    .line 439
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v11}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078e

    .line 440
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v12}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078f

    .line 441
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v10}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f110790

    .line 442
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$16;-><init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 438
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    return-object v8
.end method


# virtual methods
.method public bridge synthetic buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    move-object v2, p2

    check-cast v2, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    move-object v3, p3

    check-cast v3, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object v4, p4

    check-cast v4, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;
    .locals 10
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
    .param p4, "remoteControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
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
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsCategory<Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 58
    .local v9, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x0

    const v2, 0x7f0704d7

    const v3, 0x7f110361

    .line 59
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110362

    .line 60
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildInterfaceSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 58
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x1

    const v2, 0x7f0704d9

    const v3, 0x7f110501

    .line 62
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110529

    .line 63
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildPilotingSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 61
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x2

    const v2, 0x7f0704da

    const v3, 0x7f110655

    .line 65
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110656

    .line 66
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildSafetySettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 64
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x3

    const v2, 0x7f0704d6

    const v3, 0x7f11079d

    .line 68
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110789

    .line 69
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildVideoSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 67
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x4

    const v2, 0x7f0704d8

    const v3, 0x7f11056e

    .line 71
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110573

    .line 72
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, p4}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildNetworkSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 70
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v8
.end method

.method protected abstract buildPilotingSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
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
.end method

.method public bridge synthetic isFpvEnabled(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    check-cast p2, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p3, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    check-cast p4, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->isFpvEnabled(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Z

    move-result v0

    return v0
.end method

.method public isFpvEnabled(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Z
    .locals 1
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
    .param p4, "model3"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->isFpvEnabled()Z

    move-result v0

    return v0
.end method

.method protected abstract isFpvSupported()Z
.end method
