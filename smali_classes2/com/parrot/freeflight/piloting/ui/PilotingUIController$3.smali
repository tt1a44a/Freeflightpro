.class Lcom/parrot/freeflight/piloting/ui/PilotingUIController$3;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;I)V
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
    .line 168
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePosition(FFF)V
    .locals 1
    .param p1, "distanceToDrone"    # F
    .param p2, "distanceToHome"    # F
    .param p3, "bearing"    # F

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0, p1, p3}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updatePosition(FF)V

    .line 172
    return-void
.end method

.method public updateRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 177
    return-void
.end method
