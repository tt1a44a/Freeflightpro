.class Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$1;
.super Ljava/lang/Object;
.source "FpvEyesCalibrationUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->access$000(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;)Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;->onBackButtonClick()V

    .line 85
    return-void
.end method