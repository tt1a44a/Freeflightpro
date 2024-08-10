.class public Lcom/parrot/freeflight/followme/FollowMeContainer;
.super Ljava/lang/Object;
.source "FollowMeContainer.java"


# instance fields
.field private mBehaviorMode:I

.field private final mImprovementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModesInfo:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPilotingMode:I

.field private final mRequirementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mPilotingMode:I

    .line 21
    iput v0, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mBehaviorMode:I

    .line 24
    new-instance v0, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    invoke-direct {v0}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mRequirementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    .line 27
    new-instance v0, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    invoke-direct {v0}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mImprovementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    sget v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FOLLOW_ME_MODE_NUMBER:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mModesInfo:Landroid/util/SparseArray;

    return-void
.end method

.method private getLocalBehaviorFromSdkBehavior(I)I
    .locals 3
    .param p1, "sdkBehavior"    # I

    .prologue
    .line 155
    sget-object v1, Lcom/parrot/freeflight/followme/FollowMeContainer$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_FOLLOW_ME_BEHAVIOR_ENUM:[I

    invoke-static {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_BEHAVIOR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_BEHAVIOR_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_BEHAVIOR_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    .line 169
    .local v0, "localBehavior":I
    :goto_0
    return v0

    .line 157
    .end local v0    # "localBehavior":I
    :pswitch_0
    const/4 v0, 0x3

    .line 158
    .restart local v0    # "localBehavior":I
    goto :goto_0

    .line 160
    .end local v0    # "localBehavior":I
    :pswitch_1
    const/4 v0, 0x2

    .line 161
    .restart local v0    # "localBehavior":I
    goto :goto_0

    .line 163
    .end local v0    # "localBehavior":I
    :pswitch_2
    const/4 v0, 0x1

    .line 164
    .restart local v0    # "localBehavior":I
    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLocalModeFromSdkMode(I)I
    .locals 3
    .param p1, "sdkMode"    # I

    .prologue
    .line 135
    sget-object v1, Lcom/parrot/freeflight/followme/FollowMeContainer$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_FOLLOW_ME_MODE_ENUM:[I

    invoke-static {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 146
    const/4 v0, 0x0

    .line 149
    .local v0, "localMode":I
    :goto_0
    return v0

    .line 137
    .end local v0    # "localMode":I
    :pswitch_0
    const/4 v0, 0x1

    .line 138
    .restart local v0    # "localMode":I
    goto :goto_0

    .line 140
    .end local v0    # "localMode":I
    :pswitch_1
    const/4 v0, 0x2

    .line 141
    .restart local v0    # "localMode":I
    goto :goto_0

    .line 143
    .end local v0    # "localMode":I
    :pswitch_2
    const/4 v0, 0x3

    .line 144
    .restart local v0    # "localMode":I
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isAcquired(SI)Z
    .locals 1
    .param p1, "valuesAcquired"    # S
    .param p2, "valueToTest"    # I

    .prologue
    .line 129
    shr-int v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateContainers(ISS)V
    .locals 11
    .param p1, "modeValue"    # I
    .param p2, "requirementsAcquired"    # S
    .param p3, "improvementsAcquired"    # S

    .prologue
    .line 57
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v1, v7, v6

    .line 59
    .local v1, "input":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;
    sget-object v9, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;

    if-eq v1, v9, :cond_0

    .line 62
    sget-object v9, Lcom/parrot/freeflight/followme/FollowMeContainer$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_FOLLOW_ME_INPUT_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 92
    const/4 v5, 0x0

    .line 93
    .local v5, "requestType":I
    const/4 v4, 0x0

    .line 97
    .local v4, "message":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/followme/FollowMeContainer;->getLocalModeFromSdkMode(I)I

    move-result v3

    .line 98
    .local v3, "localMode":I
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;->getValue()I

    move-result v2

    .line 99
    .local v2, "inputValue":I
    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 101
    .local v0, "hasRequest":Z
    :goto_2
    invoke-direct {p0, p2, v2}, Lcom/parrot/freeflight/followme/FollowMeContainer;->isAcquired(SI)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v0, :cond_2

    .line 102
    iget-object v9, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mRequirementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    const/4 v10, 0x1

    invoke-virtual {v9, v3, v5, v4, v10}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->addFollowMeRequest(IIII)V

    .line 107
    :goto_3
    invoke-direct {p0, p3, v2}, Lcom/parrot/freeflight/followme/FollowMeContainer;->isAcquired(SI)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v0, :cond_3

    .line 108
    iget-object v9, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mImprovementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v5, v4, v10}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->addFollowMeRequest(IIII)V

    .line 57
    .end local v0    # "hasRequest":Z
    .end local v2    # "inputValue":I
    .end local v3    # "localMode":I
    .end local v4    # "message":I
    .end local v5    # "requestType":I
    :cond_0
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 64
    :pswitch_0
    const/4 v5, 0x1

    .line 65
    .restart local v5    # "requestType":I
    const v4, 0x7f11028c

    .line 66
    .restart local v4    # "message":I
    goto :goto_1

    .line 68
    .end local v4    # "message":I
    .end local v5    # "requestType":I
    :pswitch_1
    const/4 v5, 0x2

    .line 69
    .restart local v5    # "requestType":I
    const v4, 0x7f11027b

    .line 70
    .restart local v4    # "message":I
    goto :goto_1

    .line 72
    .end local v4    # "message":I
    .end local v5    # "requestType":I
    :pswitch_2
    const/4 v5, 0x3

    .line 73
    .restart local v5    # "requestType":I
    const v4, 0x7f110278

    .line 74
    .restart local v4    # "message":I
    goto :goto_1

    .line 76
    .end local v4    # "message":I
    .end local v5    # "requestType":I
    :pswitch_3
    const/4 v5, 0x4

    .line 77
    .restart local v5    # "requestType":I
    const v4, 0x7f110276

    .line 78
    .restart local v4    # "message":I
    goto :goto_1

    .line 80
    .end local v4    # "message":I
    .end local v5    # "requestType":I
    :pswitch_4
    const/4 v5, 0x5

    .line 81
    .restart local v5    # "requestType":I
    const v4, 0x7f11027d

    .line 82
    .restart local v4    # "message":I
    goto :goto_1

    .line 84
    .end local v4    # "message":I
    .end local v5    # "requestType":I
    :pswitch_5
    const/4 v5, 0x6

    .line 85
    .restart local v5    # "requestType":I
    const v4, 0x7f11027e

    .line 86
    .restart local v4    # "message":I
    goto :goto_1

    .line 88
    .end local v4    # "message":I
    .end local v5    # "requestType":I
    :pswitch_6
    const/4 v5, 0x7

    .line 89
    .restart local v5    # "requestType":I
    const v4, 0x7f110288

    .line 90
    .restart local v4    # "message":I
    goto :goto_1

    .line 99
    .restart local v2    # "inputValue":I
    .restart local v3    # "localMode":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 104
    .restart local v0    # "hasRequest":Z
    :cond_2
    iget-object v9, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mRequirementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    invoke-virtual {v9, v3, v5}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->removeFollowMeRequest(II)V

    goto :goto_3

    .line 110
    :cond_3
    iget-object v9, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mImprovementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    invoke-virtual {v9, v3, v5}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->removeFollowMeRequest(II)V

    goto :goto_4

    .line 114
    .end local v0    # "hasRequest":Z
    .end local v1    # "input":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;
    .end local v2    # "inputValue":I
    .end local v3    # "localMode":I
    .end local v4    # "message":I
    .end local v5    # "requestType":I
    :cond_4
    return-void

    .line 62
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
    .end packed-switch
.end method


# virtual methods
.method public getBehaviorMode()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mBehaviorMode:I

    return v0
.end method

.method public getImprovementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mImprovementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    return-object v0
.end method

.method public getPilotingMode()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mPilotingMode:I

    return v0
.end method

.method public getRequirementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mRequirementContainer:Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    return-object v0
.end method

.method public updateFollowMeModeInfo(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "followMeModeInfoBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    const/4 v5, 0x0

    .line 35
    .local v5, "shouldUpdate":Z
    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 37
    .local v3, "modeInfoBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 38
    const-string v6, "FollowMeDeviceControllerModeInfoNotificationModeKey"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 40
    .local v4, "modeValue":I
    const-string v6, "FollowMeDeviceControllerModeInfoNotificationMissingRequirementsKey"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    .line 41
    .local v1, "acquiredRequirements":S
    const-string v6, "FollowMeDeviceControllerModeInfoNotificationImprovementsKey"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 43
    .local v0, "acquiredImprovements":S
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mModesInfo:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/Pair;

    .line 45
    .local v2, "modeInfo":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Short;Ljava/lang/Short;>;"
    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-ne v6, v1, :cond_0

    iget-object v6, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-eq v6, v0, :cond_1

    .line 48
    :cond_0
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mModesInfo:Landroid/util/SparseArray;

    new-instance v7, Landroid/support/v4/util/Pair;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    invoke-direct {p0, v4, v1, v0}, Lcom/parrot/freeflight/followme/FollowMeContainer;->updateContainers(ISS)V

    .line 50
    const/4 v5, 0x1

    .line 53
    .end local v0    # "acquiredImprovements":S
    .end local v1    # "acquiredRequirements":S
    .end local v2    # "modeInfo":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Short;Ljava/lang/Short;>;"
    .end local v4    # "modeValue":I
    :cond_1
    return v5
.end method

.method public updateFollowMeState(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "followMeStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    const-string v4, "FollowMeDeviceControllerStateNotificationModeKey"

    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->getValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 118
    .local v3, "pilotingMode":I
    iget v2, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mPilotingMode:I

    .line 119
    .local v2, "oldPilotingMode":I
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/followme/FollowMeContainer;->getLocalModeFromSdkMode(I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mPilotingMode:I

    .line 121
    const-string v4, "FollowMeDeviceControllerStateNotificationBehaviorKey"

    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_BEHAVIOR_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_BEHAVIOR_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_BEHAVIOR_ENUM;->getValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "behaviorMode":I
    iget v1, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mBehaviorMode:I

    .line 123
    .local v1, "oldBehaviorMode":I
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/followme/FollowMeContainer;->getLocalBehaviorFromSdkBehavior(I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mBehaviorMode:I

    .line 125
    iget v4, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mPilotingMode:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/parrot/freeflight/followme/FollowMeContainer;->mBehaviorMode:I

    if-eq v1, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
