.class Lcom/parrot/freeflight/home/HomeUIController$29;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1860
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 12
    .param p1, "activeGamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1863
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1884
    :goto_0
    return-void

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5402(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 1871
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1872
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 1874
    new-instance v9, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v9, v0, v11}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 1875
    .local v9, "connection":Landroid/view/inputmethod/BaseInputConnection;
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    .line 1876
    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$4100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$4100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    :goto_1
    const/4 v5, 0x2

    move v4, v3

    move-object v7, v6

    move-object v8, v6

    .line 1875
    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 1879
    .local v10, "navigationMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    new-instance v1, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5702(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 1880
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$5400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    goto/16 :goto_0

    .line 1876
    .end local v10    # "navigationMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :cond_2
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_1

    .line 1882
    .end local v9    # "connection":Landroid/view/inputmethod/BaseInputConnection;
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$29;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, v6}, Lcom/parrot/freeflight/home/HomeUIController;->access$5702(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto/16 :goto_0
.end method
