.class public abstract Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;
.super Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
.source "SkyControllerGrabableGamePadPreferences.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;


# instance fields
.field private final mAxisExpo:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;",
            ">;"
        }
    .end annotation
.end field

.field private final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V
    .locals 1
    .param p1, "gamepadType"    # I
    .param p2, "gamePadPrefListener"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;",
            ">;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;",
            ">;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "buttonsMappingItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;>;"
    .local p5, "axisMappingItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;>;"
    .local p6, "expoMapItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;>;"
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;-><init>(ILcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 32
    iput-object p3, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mAxisExpo:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {p0, p4, p5}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->updateMapping(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V

    .line 35
    invoke-virtual {p0, p6}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->updateExpoMap(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V

    .line 36
    return-void
.end method

.method private getActionListFromAxisMappingItems(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 12
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "axisMappingItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;

    .line 87
    .local v2, "axisMappingItem":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;
    iget-short v7, v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->productId:S

    invoke-static {v7}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v7, v8, :cond_0

    .line 88
    iget v7, v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->action:I

    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {p0, v7, v11, v8}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getCommandById(IZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/command/Command;

    move-result-object v4

    .line 89
    .local v4, "command":Lcom/parrot/freeflight/gamepad/command/Command;
    iget v7, v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->axis:I

    invoke-virtual {p0, v7, v10}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getInputById(IZ)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v1

    .line 90
    .local v1, "axisInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 91
    iget v7, v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->buttons:I

    if-eqz v7, :cond_1

    .line 92
    iget v7, v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->buttons:I

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getButtonList(I)Ljava/util/List;

    move-result-object v5

    .line 93
    .local v5, "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 94
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 95
    .local v3, "buttonInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    new-instance v7, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    invoke-direct {v7, v4, v1, v3, v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v3    # "buttonInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v5    # "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    :cond_1
    new-instance v7, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    invoke-direct {v7, v4, v1, v9, v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v1    # "axisInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v2    # "axisMappingItem":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;
    .end local v4    # "command":Lcom/parrot/freeflight/gamepad/command/Command;
    :cond_2
    return-object v0
.end method

.method private getActionListFromButtonMappingItems(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 13
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "buttonMappingItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;>;"
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;

    .line 67
    .local v1, "buttonMappingItem":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;
    iget-short v7, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;->productId:S

    invoke-static {v7}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    iget-object v10, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v7, v10, :cond_0

    .line 68
    iget v7, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;->action:I

    iget-object v10, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {p0, v7, v11, v10}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getCommandById(IZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/command/Command;

    move-result-object v2

    .line 69
    .local v2, "command":Lcom/parrot/freeflight/gamepad/command/Command;
    if-eqz v2, :cond_0

    iget v7, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;->buttons:I

    if-eqz v7, :cond_0

    .line 70
    iget v7, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;->buttons:I

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getButtonList(I)Ljava/util/List;

    move-result-object v5

    .line 71
    .local v5, "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 72
    .local v4, "inputCount":I
    if-lez v4, :cond_0

    if-gt v4, v12, :cond_0

    .line 73
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 74
    .local v3, "firstInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-ne v4, v12, :cond_1

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object v6, v7

    .line 75
    .local v6, "secondInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :goto_1
    new-instance v7, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    invoke-direct {v7, v2, v3, v6, v8}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v6    # "secondInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_1
    move-object v6, v8

    .line 74
    goto :goto_1

    .line 80
    .end local v1    # "buttonMappingItem":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;
    .end local v2    # "command":Lcom/parrot/freeflight/gamepad/command/Command;
    .end local v3    # "firstInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v4    # "inputCount":I
    .end local v5    # "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getAxisExpo()Landroid/util/SparseArray;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mAxisExpo:Landroid/util/SparseArray;

    return-object v0
.end method

.method protected abstract getButtonList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getCommandById(IZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/command/Command;
    .param p3    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract getInputById(IZ)Lcom/parrot/freeflight/gamepad/GamePad$Input;
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;->onResetPreferences()V

    .line 132
    :cond_0
    return-void
.end method

.method public updateAxisExpo(Ljava/lang/Integer;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V
    .locals 2
    .param p1, "axis"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "expoType"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mAxisExpo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mAxisExpo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;->onSaveJoystickParams(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 125
    :cond_0
    return-void
.end method

.method public updateExpoMap(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V
    .locals 5
    .param p1    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "expoMapItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;>;"
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;

    .line 41
    .local v1, "expoMapItem":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;
    iget-short v3, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;->product:S

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v3, v4, :cond_0

    .line 42
    iget v3, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;->expo:I

    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    move-result-object v0

    .line 43
    .local v0, "axisExpo":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mAxisExpo:Landroid/util/SparseArray;

    iget v4, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;->axis:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 47
    .end local v0    # "axisExpo":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    .end local v1    # "expoMapItem":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mAxisExpo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 49
    :cond_2
    return-void
.end method

.method public updateMapping(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;",
            ">;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "buttonsMappingItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;>;"
    .local p2, "axisMappingItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getActionListFromButtonMappingItems(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_0
    if-eqz p2, :cond_1

    .line 58
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getActionListFromAxisMappingItems(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_1
    new-instance v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 61
    return-void
.end method
