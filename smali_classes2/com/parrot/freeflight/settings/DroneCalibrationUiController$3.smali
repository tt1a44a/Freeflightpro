.class Lcom/parrot/freeflight/settings/DroneCalibrationUiController$3;
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

.field final synthetic val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$3;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$3;->val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$3;->val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$3;->val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;->onBackButtonClick()V

    .line 168
    :cond_0
    return-void
.end method
