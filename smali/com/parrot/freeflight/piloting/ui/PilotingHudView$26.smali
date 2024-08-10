.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;


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
    .line 2013
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeElapsedChanged(J)V
    .locals 3
    .param p1, "timeElapsed"    # J

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26$1;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2024
    :cond_0
    return-void
.end method
