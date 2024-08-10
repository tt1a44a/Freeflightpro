.class public Lcom/parrot/freeflight/gamepad/preferences/SkyControllerNGGamePadPreferences;
.super Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;
.source "SkyControllerNGGamePadPreferences.java"


# instance fields
.field private final mProductVariant:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;I)V
    .locals 7
    .param p1, "gamePadPrefListener"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
        .annotation build Landroid/support/annotation/Nullable;
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
    .param p6, "productVariant"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "buttonsMappingItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;>;"
    .local p4, "axisMappingItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;>;"
    .local p5, "expoMapItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;>;"
    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;-><init>(ILcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V

    .line 22
    iput p6, p0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerNGGamePadPreferences;->mProductVariant:I

    .line 23
    return-void
.end method


# virtual methods
.method protected getButtonList(I)Ljava/util/List;
    .locals 9
    .param p1, "buttonsBitfield"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->getButtonsFromBitfield(I)Ljava/util/List;

    move-result-object v3

    .line 38
    .local v3, "oldInputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, "newInputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 41
    .local v0, "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget v5, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-static {v5}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->getKeyCodeFromButtonId(I)I

    move-result v1

    .line 42
    .local v1, "newId":I
    if-ltz v1, :cond_0

    .line 43
    new-instance v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v6, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    iget v7, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    iget v8, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    .end local v0    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v1    # "newId":I
    :cond_1
    return-object v2
.end method

.method protected getCommandById(IZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/command/Command;
    .locals 1
    .param p1, "id"    # I
    .param p2, "isAnalog"    # Z
    .param p3, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-static {p1, p2, p3}, Lcom/parrot/freeflight/gamepad/command/SkyControllerGrabableCommand;->getDroneCommandByRemoteCommandId(IZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/command/Command;

    move-result-object v0

    return-object v0
.end method

.method protected getInputById(IZ)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 1
    .param p1, "id"    # I
    .param p2, "isAButton"    # Z

    .prologue
    .line 32
    invoke-static {p1, p2}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->getInputById(IZ)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v0

    return-object v0
.end method
