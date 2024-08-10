.class Lcom/parrot/freeflight/infos/DroneInfosUiController$9;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 11
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 618
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$600(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 631
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$602(Lcom/parrot/freeflight/infos/DroneInfosUiController;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 621
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$600(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v0, v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_1

    .line 622
    new-instance v9, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$700(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v9, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 623
    .local v9, "connection":Landroid/view/inputmethod/BaseInputConnection;
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$600(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v2, v2, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    const/4 v5, 0x2

    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v6, v4, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v7, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    move v4, v3

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 627
    .local v10, "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    new-instance v1, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v2}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$802(Lcom/parrot/freeflight/infos/DroneInfosUiController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto :goto_0

    .line 629
    .end local v9    # "connection":Landroid/view/inputmethod/BaseInputConnection;
    .end local v10    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0, v8}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$802(Lcom/parrot/freeflight/infos/DroneInfosUiController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto :goto_0
.end method
