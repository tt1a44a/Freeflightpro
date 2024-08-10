.class public Lcom/parrot/freeflight/gamepad/command/CommandListFactory;
.super Ljava/lang/Object;
.source "CommandListFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Ljava/util/List;
    .locals 7
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mappingChoice"    # I
    .param p2, "settingsFilter"    # I
    .param p3, "gamePadType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 20
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p0, v3, :cond_0

    sget-object p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->DEFAULT_PRODUCT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 22
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/command/Command;>;"
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 25
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->values()[Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_b

    aget-object v0, v3, v2

    .line 26
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    :cond_2
    sget-object v3, Lcom/parrot/freeflight/gamepad/command/CommandListFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 44
    :cond_3
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/SettingsCommand;->values()[Lcom/parrot/freeflight/gamepad/command/SettingsCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_7

    aget-object v0, v4, v3

    .line 45
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/SettingsCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 31
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/SettingsCommand;
    :pswitch_0
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->values()[Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 32
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 39
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;
    :pswitch_1
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->values()[Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 40
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/BebopCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 47
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/BebopCommand;
    :cond_7
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->values()[Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_9

    aget-object v0, v4, v3

    .line 48
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/FpvCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 50
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/FpvCommand;
    :cond_9
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    move-result-object v3

    array-length v4, v3

    :goto_5
    if-ge v2, v4, :cond_b

    aget-object v0, v3, v2

    .line 51
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 54
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    :cond_b
    return-object v1

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
