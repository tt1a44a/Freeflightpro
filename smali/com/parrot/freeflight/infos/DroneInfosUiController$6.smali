.class Lcom/parrot/freeflight/infos/DroneInfosUiController$6;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;->calibrateDrone()V
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
    .line 366
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$6;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$6;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v0, v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$6;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v0, v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->reset()V

    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$6;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$6;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$6;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v2, v2, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/settings/CalibrationActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 373
    :cond_0
    return-void
.end method
