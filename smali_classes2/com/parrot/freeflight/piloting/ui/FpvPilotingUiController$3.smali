.class Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$3;
.super Ljava/lang/Object;
.source "FpvPilotingUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
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
    .line 142
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$600(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;->onBackButtonClick()V

    .line 146
    return-void
.end method
