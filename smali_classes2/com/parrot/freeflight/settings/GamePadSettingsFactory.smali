.class public Lcom/parrot/freeflight/settings/GamePadSettingsFactory;
.super Ljava/lang/Object;
.source "GamePadSettingsFactory.java"


# static fields
.field private static final SKYCONTROLLER_2P_SETTINGS_ENTRIES_NUMBER:I = 0x6

.field private static final SKYCONTROLLER_2_SETTINGS_ENTRIES_NUMBER:I = 0x6

.field private static final SKYCONTROLLER_NG_SETTINGS_ENTRIES_NUMBER:I = 0x8

.field private static final SKYCONTROLLER_SETTINGS_ENTRIES_NUMBER:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFirmware(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;",
            "Landroid/content/res/Resources;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$4;

    const v1, 0x7f1101ff

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100bf

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$4;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method private static addGeneralInformation(Ljava/util/List;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$1;

    const v1, 0x7f110324

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method private static addHardwareVersion(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$3;

    const v1, 0x7f11033e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method private static addMagnetometer(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/content/Context;)V
    .locals 6
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;",
            "Landroid/content/res/Resources;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$7;

    const v1, 0x7f1103b5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100ec

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$7;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/content/res/Resources;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method private static addMapping(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;)V
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;",
            "Landroid/content/res/Resources;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$8;

    const v1, 0x7f1103ca

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110179

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$8;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method private static addNetworkSsid(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;",
            "Landroid/content/res/Resources;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$5;

    const v1, 0x7f11056e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$5;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method private static addSerial(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$2;

    const v1, 0x7f11068c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method private static addWifiChannel(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;",
            "Landroid/content/res/Resources;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    new-instance v0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$6;

    const v1, 0x7f1107e5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$6;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/settings/model/SettingsCategory;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ")",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    const v4, 0x7f07043d

    const v3, 0x7f0703f5

    const/4 v2, 0x6

    .line 41
    const/4 v5, 0x0

    .line 42
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 44
    .local v11, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 47
    check-cast p1, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    .end local p1    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v10

    .line 48
    .local v10, "remoteModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->requestWifiAuthChannel()V

    .line 49
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v4, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addGeneralInformation(Ljava/util/List;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 52
    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSerial()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addSerial(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 53
    invoke-static {v5, v11, v10}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addNetworkSsid(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 54
    invoke-static {v5, v11, v10}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addWifiChannel(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 55
    invoke-static {v5, v11, v10, p0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addMagnetometer(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/content/Context;)V

    .line 56
    invoke-static {v5, v11, p0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addMapping(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;)V

    .line 96
    .end local v10    # "remoteModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :cond_0
    :goto_0
    if-nez v5, :cond_4

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_1
    return-object v0

    .line 57
    .restart local p1    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move-object v8, p1

    .line 58
    check-cast v8, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    .line 59
    .local v8, "mpp":Lcom/parrot/freeflight/gamepad/SkyController2GamePad;
    invoke-virtual {v8}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v10

    .line 60
    .restart local v10    # "remoteModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    invoke-virtual {v8}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v3, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addGeneralInformation(Ljava/util/List;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 63
    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSerial()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addSerial(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addHardwareVersion(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v8}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, p0, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addFirmware(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-static {v5, v11, v10, p0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addMagnetometer(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/content/Context;)V

    .line 67
    invoke-static {v5, v11, p0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addMapping(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;)V

    goto :goto_0

    .line 68
    .end local v8    # "mpp":Lcom/parrot/freeflight/gamepad/SkyController2GamePad;
    .end local v10    # "remoteModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    move-object v8, p1

    .line 69
    check-cast v8, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;

    .line 70
    .local v8, "mpp":Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;
    invoke-virtual {v8}, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v10

    .line 71
    .restart local v10    # "remoteModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    invoke-virtual {v8}, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v3, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addGeneralInformation(Ljava/util/List;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 74
    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSerial()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addSerial(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addHardwareVersion(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v8}, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, p0, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addFirmware(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    invoke-static {v5, v11, v10, p0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addMagnetometer(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/content/Context;)V

    .line 78
    invoke-static {v5, v11, p0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addMapping(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;)V

    goto :goto_0

    .line 79
    .end local v8    # "mpp":Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;
    .end local v10    # "remoteModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :cond_3
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v9, p1

    .line 80
    check-cast v9, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;

    .line 81
    .local v9, "napNg":Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;
    invoke-virtual {v9}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v10

    .line 82
    .restart local v10    # "remoteModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->requestWifiAuthChannel()V

    .line 83
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    const/16 v0, 0x8

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    invoke-virtual {v9}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v4, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addGeneralInformation(Ljava/util/List;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 86
    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSerial()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addSerial(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addHardwareVersion(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v9}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v11, p0, v0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addFirmware(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-static {v5, v11, v10}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addNetworkSsid(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 90
    invoke-static {v5, v11, v10}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addWifiChannel(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 91
    invoke-static {v5, v11, v10, p0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addMagnetometer(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/content/Context;)V

    .line 92
    invoke-static {v5, v11, p0}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addMapping(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 99
    .end local v9    # "napNg":Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;
    .end local v10    # "remoteModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .end local p1    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_4
    new-instance v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    const/4 v1, 0x5

    const v2, 0x7f0704e1

    const v3, 0x7f11017b

    .line 100
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f11017a

    .line 101
    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V

    goto/16 :goto_1
.end method
