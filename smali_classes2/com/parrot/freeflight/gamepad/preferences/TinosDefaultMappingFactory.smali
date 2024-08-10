.class public Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;
.super Ljava/lang/Object;
.source "TinosDefaultMappingFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildBebopDefaultMapping(IILcom/parrot/freeflight/piloting/model/bebop/BebopModel;Ljava/util/List;)V
    .locals 11
    .param p0, "commandType"    # I
    .param p1, "settingsFilter"    # I
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->values()[Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 152
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/BebopCommand;
    const/4 v5, 0x1

    invoke-static {v1, p1, v5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v5, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 218
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "5"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xc0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 160
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 162
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbd

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 165
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 167
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "R2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x69

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 170
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 172
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x66

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 175
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 177
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x66

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 180
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 182
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x66

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 185
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 187
    :pswitch_6
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L1"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x66

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J1"

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 190
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 192
    :pswitch_7
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "L2"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x68

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "J2"

    const/4 v8, 0x2

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 195
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 197
    :pswitch_8
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 200
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 202
    :pswitch_9
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 205
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 207
    :pswitch_a
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J2"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 210
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 212
    :pswitch_b
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J2"

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto/16 :goto_2

    .line 220
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/BebopCommand;
    :cond_2
    return-void

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private static buildDefaultAppCommand(IILandroid/view/inputmethod/BaseInputConnection;Ljava/util/List;)V
    .locals 10
    .param p0, "commandType"    # I
    .param p1, "settingsFilter"    # I
    .param p2, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/view/inputmethod/BaseInputConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 107
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    const/4 v5, 0x1

    invoke-static {v1, p1, v5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v5, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 141
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "3"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbe

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 115
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 117
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "4"

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/16 v9, 0xbf

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 120
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 122
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 125
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 127
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 130
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 132
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 135
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 137
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v6, "J1"

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v6, 0x0

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 143
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/AppCommand;
    :cond_2
    return-void

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static buildDefaultPilotingUiControllerCommand(IILcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Ljava/util/List;)V
    .locals 11
    .param p0, "commandType"    # I
    .param p1, "settingsFilter"    # I
    .param p2, "controller"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v10, 0x0

    const/4 v9, 0x7

    const/4 v3, 0x0

    .line 80
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->values()[Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 81
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/FpvCommand;
    const/4 v6, 0x1

    invoke-static {v1, p1, v6}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$FpvCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 97
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "L1"

    const/16 v8, 0x66

    invoke-direct {v6, v7, v3, v9, v8}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    invoke-direct {v0, v1, v6, v10, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 90
    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 92
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "R1"

    const/16 v8, 0x67

    invoke-direct {v6, v7, v3, v9, v8}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    invoke-direct {v0, v1, v6, v10, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 99
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/FpvCommand;
    :cond_2
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static buildDefaultUiControllerCommand(IILcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Ljava/util/List;)V
    .locals 10
    .param p0, "commandType"    # I
    .param p1, "settingsFilter"    # I
    .param p2, "controller"    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/SettingsCommand;->values()[Lcom/parrot/freeflight/gamepad/command/SettingsCommand;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 60
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/SettingsCommand;
    const/4 v6, 0x1

    invoke-static {v1, p1, v6}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v1, p0}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    sget-object v6, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$SettingsCommand:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/SettingsCommand;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 71
    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v7, "1"

    const/4 v8, 0x7

    const/16 v9, 0xbc

    invoke-direct {v6, v7, v3, v8, v9}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .restart local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    goto :goto_2

    .line 73
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/SettingsCommand;
    :cond_2
    return-void

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Ljava/util/List;
    .locals 3
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "commandType"    # I
    .param p2, "settingsFilter"    # I
    .param p3, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "settingsCommandController"    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "fpvUifpvUiCommandController"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    sget-object v1, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 49
    .end local p3    # "model":Lcom/parrot/freeflight/core/model/DroneModel;
    :goto_0
    invoke-static {p1, p2, p6, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildDefaultAppCommand(IILandroid/view/inputmethod/BaseInputConnection;Ljava/util/List;)V

    .line 50
    invoke-static {p1, p2, p4, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildDefaultUiControllerCommand(IILcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Ljava/util/List;)V

    .line 51
    return-object v0

    .line 41
    .restart local p3    # "model":Lcom/parrot/freeflight/core/model/DroneModel;
    :pswitch_0
    check-cast p3, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .end local p3    # "model":Lcom/parrot/freeflight/core/model/DroneModel;
    invoke-static {p1, p2, p3, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildBebopDefaultMapping(IILcom/parrot/freeflight/piloting/model/bebop/BebopModel;Ljava/util/List;)V

    .line 42
    invoke-static {p1, p2, p5, v0}, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;->buildDefaultPilotingUiControllerCommand(IILcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Ljava/util/List;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
