.class Lcom/parrot/freeflight/settings/DroneCalibrationUiController$2;
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

.field final synthetic val$model:Lcom/parrot/freeflight/core/model/DroneModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$2;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$2;->val$model:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$2;->val$model:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->land()V

    .line 159
    return-void
.end method
