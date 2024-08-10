.class Lcom/parrot/freeflight/settings/DroneCalibrationUiController$5;
.super Ljava/lang/Object;
.source "DroneCalibrationUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->setFinishedMode()V
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
    .line 581
    iput-object p1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$5;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$5;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->access$500(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 585
    return-void
.end method
