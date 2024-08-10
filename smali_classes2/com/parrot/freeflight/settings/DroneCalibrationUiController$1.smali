.class Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;
.super Ljava/lang/Object;
.source "DroneCalibrationUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/DroneCalibrationUiController;-><init>(Landroid/app/Activity;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->access$000(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)V

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->access$100(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->access$200(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;I)V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->access$300(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->startPitotCalibration()V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->access$200(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;I)V

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->access$300(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->startMagnetoCalibration()V

    goto :goto_0
.end method
