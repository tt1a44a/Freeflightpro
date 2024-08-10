.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFollowClicked()V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    .line 330
    .local v0, "droneConnected":Z
    if-eqz v0, :cond_1

    .line 331
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->getShowOnError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showFollowMeChecking()V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->startListeningFollowMeGps()V

    .line 337
    :cond_1
    return-void
.end method

.method public onStopClicked()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/followme/FollowMeViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopLookAt()V

    .line 324
    return-void
.end method

.method public onStopFollowClicked()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->changeFollowMeState(I)V

    .line 342
    return-void
.end method
