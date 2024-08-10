.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$4;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
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
    .line 345
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitTransitionEnd()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$300(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateView()V

    .line 350
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->exitCameraSettings()V

    .line 352
    return-void
.end method
