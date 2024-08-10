.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$5;
.super Ljava/lang/Object;
.source "FlightPlanTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

.field final synthetic val$action:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;Landroid/view/View;Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$5;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$5;->val$action:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 259
    const-string v3, ""

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 260
    .local v0, "data":Landroid/content/ClipData;
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$5;->val$view:Landroid/view/View;

    invoke-direct {v2, v3}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 261
    .local v2, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$5;->val$action:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v1

    .line 262
    .local v1, "dragAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$5;->val$view:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 263
    return-void
.end method
