.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$7;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;I)V
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
    .line 474
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enterMapMode()V

    .line 478
    return-void
.end method
