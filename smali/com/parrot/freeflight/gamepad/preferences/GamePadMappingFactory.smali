.class public Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;
.super Ljava/lang/Object;
.source "GamePadMappingFactory.java"


# static fields
.field public static final DEFAULT_PRODUCT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private static final TAG:Ljava/lang/String; = "GamePadMappingFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->DEFAULT_PRODUCT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mappingChoice"    # I
    .param p4, "commandType"    # I
    .param p5, "settingsFilter"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mappingChoice"    # I
    .param p4, "commandType"    # I
    .param p5, "settingsFilter"    # I
    .param p6, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "settingsCommandController"    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "fpvUiCommandController"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    if-eqz p2, :cond_0

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    :cond_0
    sget-object p2, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->DEFAULT_PRODUCT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 48
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v5

    .line 51
    .local v5, "gamePadType":I
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;

    if-eqz v4, :cond_3

    .line 52
    move-object/from16 v0, p9

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-static {v5, v0, v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->createNavigationMapping(ILandroid/view/inputmethod/BaseInputConnection;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v6

    .line 95
    .local v6, "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :cond_2
    :goto_0
    return-object v6

    .line 54
    .end local v6    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :cond_3
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;-><init>(Landroid/content/Context;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 56
    .local v3, "gamePadPreferences":Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->getMapping()Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v6

    .line 59
    .restart local v6    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    const-string v4, "GamePadMappingFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create: mapping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez v6, :cond_4

    move-object/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 62
    invoke-static/range {v5 .. v12}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->getDefaultMapping(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;

    .end local v6    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    move-result-object v16

    .line 65
    .local v16, "defaultGamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const-string v4, "GamePadMappingFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mapping create: defaultGamePadActions "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v6, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;-><init>(Ljava/util/List;)V

    .restart local v6    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    goto :goto_0

    .line 69
    .end local v16    # "defaultGamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    :cond_4
    const/4 v10, 0x0

    const/4 v11, -0x1

    move/from16 v7, p4

    move/from16 v8, p5

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->filter(IIIII)V

    .line 72
    invoke-virtual {v6}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 73
    .local v15, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v7, v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v7, v7, Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    if-nez v7, :cond_6

    iget-object v7, v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v7, v7, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    if-eqz v7, :cond_7

    .line 74
    :cond_6
    move-object/from16 v0, p6

    iput-object v0, v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    goto :goto_1

    .line 75
    :cond_7
    iget-object v7, v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v7, v7, Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    if-eqz v7, :cond_8

    .line 76
    move-object/from16 v0, p8

    iput-object v0, v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    goto :goto_1

    .line 77
    :cond_8
    iget-object v7, v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v7, v7, Lcom/parrot/freeflight/gamepad/command/SettingsCommand;

    if-eqz v7, :cond_9

    .line 78
    move-object/from16 v0, p7

    iput-object v0, v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    goto :goto_1

    .line 79
    :cond_9
    iget-object v7, v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    instance-of v7, v7, Lcom/parrot/freeflight/gamepad/command/AppCommand;

    if-eqz v7, :cond_5

    .line 80
    move-object/from16 v0, p9

    iput-object v0, v15, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    goto :goto_1

    .line 84
    .end local v15    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_a
    if-eqz p5, :cond_2

    .line 87
    const/4 v10, 0x1

    move v7, v5

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-static/range {v7 .. v14}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->getDefaultMapping(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;

    move-result-object v16

    .line 90
    .restart local v16    # "defaultGamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-virtual {v6}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public static createNavigationMapping(ILandroid/view/inputmethod/BaseInputConnection;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .locals 11
    .param p0, "gamePadType"    # I
    .param p1, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "settingsCommandController"    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "fpvUiCommandController"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "navigationGamePadAction":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v0, 0x0

    .line 128
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    const/4 v3, 0x6

    if-eq p0, v3, :cond_0

    const/4 v3, 0x4

    if-ne p0, v3, :cond_3

    .line 131
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 132
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 164
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "X"

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x63

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 137
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_1

    .line 139
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "Y"

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x64

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 142
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_1

    .line 144
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 147
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_1

    .line 149
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 152
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_1

    .line 154
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 157
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_1

    .line 159
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_1

    .line 166
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    :cond_1
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->values()[Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 167
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/FpvCommand;
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$FpvCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 179
    :goto_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 169
    :pswitch_6
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "R1"

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x67

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 172
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_3

    .line 174
    :pswitch_7
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "L1"

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x66

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_3

    .line 181
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/FpvCommand;
    :cond_2
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/SettingsCommand;->values()[Lcom/parrot/freeflight/gamepad/command/SettingsCommand;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 182
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/SettingsCommand;
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$SettingsCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/SettingsCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 189
    :goto_5
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 184
    :pswitch_8
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "Z"

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x65

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_5

    .line 193
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/SettingsCommand;
    :cond_3
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-direct {v3, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;-><init>(Ljava/util/List;)V

    return-object v3

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 167
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 182
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method private static getDefaultMapping(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;
    .locals 1
    .param p0, "gamePadType"    # I
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "commandType"    # I
    .param p3, "settingsFilter"    # I
    .param p4, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "settingsCommandController"    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "fpvUiCommandController"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "II",
            "Lcom/parrot/freeflight/core/model/DroneModel;",
            "Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;",
            "Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;",
            "Landroid/view/inputmethod/BaseInputConnection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    packed-switch p0, :pswitch_data_0

    .line 113
    invoke-static/range {p1 .. p7}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    invoke-static/range {p1 .. p7}, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;->create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
