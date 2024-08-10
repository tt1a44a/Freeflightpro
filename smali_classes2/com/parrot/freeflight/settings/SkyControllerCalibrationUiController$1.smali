.class Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$1;
.super Ljava/lang/Object;
.source "SkyControllerCalibrationUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;-><init>(Landroid/app/Activity;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;

.field final synthetic val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$1;->this$0:Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$1;->val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$1;->val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$1;->val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;->onBackButtonClick()V

    .line 104
    :cond_0
    return-void
.end method
