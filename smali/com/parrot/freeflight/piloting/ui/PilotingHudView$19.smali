.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initButtonsOnClickListeners(Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->toggle()V

    .line 858
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isSkycontrollerConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->switchCoPilotingState()V

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideJoysticks()V

    .line 863
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->moveVideoStreamLeft()V

    .line 865
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enableTapMode()V

    goto :goto_0

    .line 869
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticks()V

    .line 870
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->moveVideoStreamCenter()V

    .line 872
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->disableTapMode()V

    goto :goto_0
.end method
