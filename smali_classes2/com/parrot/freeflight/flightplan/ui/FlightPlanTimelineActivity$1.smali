.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$1;
.super Ljava/lang/Object;
.source "FlightPlanTimelineActivity.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;Landroid/view/DragEvent;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
