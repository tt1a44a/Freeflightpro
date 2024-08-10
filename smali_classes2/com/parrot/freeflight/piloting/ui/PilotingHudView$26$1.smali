.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26$1;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;->onTimeElapsedChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;

.field final synthetic val$timeElapsed:J


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;

    .prologue
    .line 2017
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26$1;->this$1:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;

    iput-wide p2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26$1;->val$timeElapsed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26$1;->this$1:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26$1;->val$timeElapsed:J

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->setDuration(J)V

    .line 2021
    return-void
.end method
