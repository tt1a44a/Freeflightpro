.class Lcom/parrot/freeflight/piloting/ui/PilotingUIController$9;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->createCalibrationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->reset()V

    .line 543
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iget-object v2, v2, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/settings/CalibrationActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 544
    return-void
.end method
