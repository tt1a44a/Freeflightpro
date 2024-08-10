.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$20;
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
    .line 880
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$20;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$20;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$20;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->onCenterOnButtonClicked()V

    .line 886
    :cond_0
    return-void
.end method
