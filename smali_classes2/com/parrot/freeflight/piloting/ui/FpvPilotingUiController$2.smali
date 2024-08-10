.class Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;
.super Ljava/lang/Object;
.source "FpvPilotingUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 11
    .param p1, "selectedGamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->setGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 112
    new-instance v9, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$200(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v9, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 113
    .local v9, "connection":Landroid/view/inputmethod/BaseInputConnection;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$300(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .line 115
    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$400(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    move-object v1, p1

    move v4, v3

    .line 113
    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 116
    .local v10, "navigationMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    new-instance v1, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$300(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$502(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 122
    .end local v9    # "connection":Landroid/view/inputmethod/BaseInputConnection;
    .end local v10    # "navigationMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->setGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$502(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto :goto_0
.end method
