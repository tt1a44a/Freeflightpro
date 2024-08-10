.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$4;
.super Ljava/lang/Object;
.source "FlightPlanTimelineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->onActionClicked(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

.field final synthetic val$action:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

.field final synthetic val$isForDefault:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;ZLcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    iput-boolean p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$4;->val$isForDefault:Z

    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$4;->val$action:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$4;->val$isForDefault:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$4;->val$action:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->saveParametersInActionAsDefault()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$4;->val$action:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->saveParametersInAction()V

    goto :goto_0
.end method
