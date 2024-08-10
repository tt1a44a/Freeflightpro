.class public Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;
.super Ljava/lang/Object;
.source "FixedWingSettingsBuilder.java"

# interfaces
.implements Lcom/parrot/freeflight/settings/ISettingsBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/settings/ISettingsBuilder",
        "<",
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildInterfaceSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 98
    .local v9, "resources":Landroid/content/res/Resources;
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;

    const v1, 0x7f11029f

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$1;

    const v1, 0x7f110427

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f110429

    .line 101
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11042a

    .line 102
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f110428

    .line 103
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    invoke-direct {v5, v1, v6}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$1;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 100
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;

    const v1, 0x7f11042b

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11042d

    .line 121
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11042e

    .line 122
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11042c

    .line 123
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    invoke-direct {v5, v1, v6}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 120
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;

    const v1, 0x7f11035c

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 141
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 140
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$4;

    const v1, 0x7f110693

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 159
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$4;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    .line 158
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-object v8
.end method

.method private buildPilotingSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v9, 0x7f110421

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 182
    .local v8, "resources":Landroid/content/res/Resources;
    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$5;

    const v1, 0x7f110584

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$5;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$6;

    const v1, 0x7f11053c

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$6;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->isCirclingRadiusCmdSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$7;

    const v1, 0x7f11053f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$7;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 218
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$8;

    const v1, 0x7f11053b

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$8;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 237
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-object v7
.end method

.method private buildRthSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 360
    .local v9, "resources":Landroid/content/res/Resources;
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->isFlightPlanSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getFlightPlanReturnHomeState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/ToggleState;->isSettingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getFlightPlanRegistrationManager()Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$14;

    const v1, 0x7f110652

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 365
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f110654

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f110653

    .line 366
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$14;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 364
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$15;

    const v1, 0x7f110554

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$15;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/RelativePositionController;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$16;

    const v1, 0x7f11058a

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110674

    .line 405
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$16;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 404
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    return-object v8
.end method

.method private buildSafetySettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
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
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v11, 0x7f110421

    const/4 v10, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 262
    .local v9, "resources":Landroid/content/res/Resources;
    new-instance v8, Ljava/util/ArrayList;

    const/16 v0, 0x9

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$9;

    const v1, 0x7f11058a

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f110674

    .line 264
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$9;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 263
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$10;

    const v1, 0x7f110563

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v6, v10

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$10;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DZLcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 281
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$11;

    const v1, 0x7f11056b

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v6, v10

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$11;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DZLcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 299
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$12;

    const v1, 0x7f110564

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v6, v10

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$12;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DZLcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 317
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$13;

    const v1, 0x7f110545

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1104bb

    .line 336
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1107f6

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$13;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 335
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-object v8
.end method

.method private buildVideoSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v7, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 428
    .local v9, "resources":Landroid/content/res/Resources;
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getVideoResolutions()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 430
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$17;

    const v1, 0x7f11079a

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11051f

    .line 431
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v11}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11051e

    .line 432
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v10}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f11079b

    .line 433
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$17;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 430
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_0
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getRecordingMode()I

    move-result v0

    if-eq v0, v7, :cond_1

    .line 457
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$18;

    const v1, 0x7f110796

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f110799

    .line 458
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v11}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f110798

    .line 459
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v10}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f110797

    .line 460
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$18;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 457
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_1
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getFrameRate()I

    move-result v0

    if-eq v0, v7, :cond_2

    .line 484
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$19;

    const v1, 0x7f110791

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078a

    .line 485
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v10}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078b

    .line 486
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v11}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078c

    .line 487
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v12}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$19;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 484
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_2
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->isAntiflickeringCmdSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 511
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$20;

    const v1, 0x7f1100b4

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078d

    .line 512
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v11}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078e

    .line 513
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v12}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    const v1, 0x7f11078f

    .line 514
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v10}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f110790

    .line 515
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$20;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 511
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_3
    return-object v8
.end method

.method private buildWifiSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
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
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 539
    .local v10, "resources":Landroid/content/res/Resources;
    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 540
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$21;

    const v1, 0x7f11056e

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1107ee

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$21;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$22;

    const v1, 0x7f110575

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f11057d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$22;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;

    const v1, 0x7f1107e1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f11056f

    .line 578
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f110570

    .line 579
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f110571

    .line 580
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f110576

    .line 581
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_0

    .line 582
    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->is5GHzBandAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_0
    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;-><init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 577
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    return-object v9

    .line 582
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
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
    .line 46
    move-object v2, p2

    check-cast v2, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    move-object v3, p3

    check-cast v3, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object v4, p4

    check-cast v4, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
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
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsCategory<Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 62
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/parrot/freeflight/util/Screen;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x0

    const v2, 0x7f0704d7

    const v3, 0x7f110361

    .line 65
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110362

    .line 66
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-direct {p0, p1, p3}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildInterfaceSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 63
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x1

    const v2, 0x7f0704d9

    const v3, 0x7f110501

    .line 71
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110529

    .line 72
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildPilotingSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x2

    const v2, 0x7f0704da

    const v3, 0x7f110655

    .line 76
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110656

    .line 77
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildSafetySettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 74
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getVideoResolutions()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 80
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getRecordingMode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 81
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getFrameRate()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 82
    :cond_1
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x3

    const v2, 0x7f0704d6

    const v3, 0x7f11079d

    .line 84
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110789

    .line 85
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildVideoSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 82
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_2
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x4

    const v2, 0x7f0704d8

    const v3, 0x7f11056e

    .line 89
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110573

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-direct {p0, p1, p2, p4}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildWifiSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 88
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v8
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
    .line 46
    check-cast p2, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    check-cast p3, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    check-cast p4, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->isFpvEnabled(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Z

    move-result v0

    return v0
.end method

.method public isFpvEnabled(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
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
    .line 51
    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->isFpvEnabled()Z

    move-result v0

    return v0
.end method
