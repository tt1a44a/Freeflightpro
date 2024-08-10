.class Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;
.super Ljava/lang/Object;
.source "GamePadInfosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    instance-of v2, v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    .line 194
    .local v0, "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 196
    .end local v0    # "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    instance-of v2, v2, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    .line 198
    .restart local v0    # "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 200
    .end local v0    # "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :cond_1
    if-eqz v1, :cond_2

    .line 201
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$7;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v3, v1}, Lcom/parrot/freeflight/settings/CalibrationActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    :cond_2
    return-void
.end method
