.class public Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;
.super Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
.source "SkyControllerGamePadPreferences.java"


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 1
    .param p1, "gamePadPrefListener"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "gamePadMapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;-><init>(ILcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 21
    return-void
.end method

.method private addFilterParams(ILcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;[I[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;)V
    .locals 10
    .param p1, "axisId"    # I
    .param p2    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "selectedFilters"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "joystickFilters"    # [Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;[I[",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "filterMapping":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<Ljava/lang/String;>;"
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 66
    invoke-virtual {p2, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, "filter":Ljava/lang/String;
    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;->getSourceType(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "type":I
    if-ne v2, v5, :cond_0

    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 116
    :goto_1
    return-void

    .line 68
    .end local v0    # "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .restart local v0    # "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    :pswitch_0
    if-ne v2, v5, :cond_1

    .line 73
    aput v7, p3, v6

    .line 74
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>()V

    invoke-direct {v3, v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v6

    .line 75
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v7

    goto :goto_1

    .line 77
    :cond_1
    aput v6, p3, v6

    .line 78
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v6

    .line 79
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>()V

    invoke-direct {v3, v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v7

    goto :goto_1

    .line 83
    :pswitch_1
    if-ne v2, v5, :cond_2

    .line 84
    aput v8, p3, v5

    .line 85
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>()V

    invoke-direct {v3, v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v5

    .line 86
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v8

    goto :goto_1

    .line 88
    :cond_2
    aput v5, p3, v5

    .line 89
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v5

    .line 90
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>()V

    invoke-direct {v3, v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v8

    goto :goto_1

    .line 94
    :pswitch_2
    if-ne v2, v5, :cond_3

    .line 95
    const/4 v3, 0x6

    aput v3, p3, v7

    .line 96
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>()V

    invoke-direct {v3, v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v9

    .line 97
    const/4 v3, 0x6

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    invoke-direct {v4, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v4, p4, v3

    goto :goto_1

    .line 99
    :cond_3
    aput v9, p3, v7

    .line 100
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v3, p4, v9

    .line 101
    const/4 v3, 0x6

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v5, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v5}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>()V

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v4, p4, v3

    goto/16 :goto_1

    .line 105
    :pswitch_3
    if-ne v2, v5, :cond_4

    .line 106
    const/4 v3, 0x7

    aput v3, p3, v8

    .line 107
    const/4 v3, 0x5

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v5, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v5}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>()V

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v4, p4, v3

    .line 108
    const/4 v3, 0x7

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    invoke-direct {v4, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v4, p4, v3

    goto/16 :goto_1

    .line 110
    :cond_4
    const/4 v3, 0x5

    aput v3, p3, v8

    .line 111
    const/4 v3, 0x5

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    invoke-direct {v4, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v4, p4, v3

    .line 112
    const/4 v3, 0x7

    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v5, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v5}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>()V

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v4, p4, v3

    goto/16 :goto_1

    .line 70
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getActionListFromSkyMapping(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;)Ljava/util/List;
    .locals 9
    .param p1    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "sparseArray":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 48
    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->keyAt(I)I

    move-result v5

    .line 49
    .local v5, "inputId":I
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "commandName":Ljava/lang/String;
    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->getCommandWithName(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    move-result-object v1

    .line 52
    .local v1, "command":Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->getInputById(I)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v4

    .line 53
    .local v4, "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 54
    new-instance v7, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    invoke-direct {v7, v1, v4, v8, v8}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "command":Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    .end local v2    # "commandName":Ljava/lang/String;
    .end local v4    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v5    # "inputId":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public updateJoystickParams(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;)V
    .locals 4
    .param p1    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "joystickFilter":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<Ljava/lang/String;>;"
    const/4 v3, 0x4

    .line 24
    const/16 v2, 0x8

    new-array v0, v2, [Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    .line 25
    .local v0, "joystickFilters":[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    new-array v1, v3, [I

    .line 27
    .local v1, "selectedFilters":[I
    invoke-direct {p0, v3, p1, v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->addFilterParams(ILcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;[I[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;)V

    .line 28
    const/4 v2, 0x5

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->addFilterParams(ILcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;[I[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;)V

    .line 29
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->addFilterParams(ILcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;[I[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;)V

    .line 30
    const/4 v2, 0x3

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->addFilterParams(ILcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;[I[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;)V

    .line 32
    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-direct {v2, v0, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;-><init>([Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;[I)V

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    .line 33
    return-void
.end method

.method public updateMapping(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "buttonsMapping":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<Ljava/lang/String;>;"
    .local p2, "axisMapping":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->getActionListFromSkyMapping(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->getActionListFromSkyMapping(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    new-instance v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 41
    return-void
.end method
