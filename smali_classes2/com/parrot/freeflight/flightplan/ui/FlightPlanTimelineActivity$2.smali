.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$2;
.super Ljava/lang/Object;
.source "FlightPlanTimelineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 117
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    .line 121
    return-void
.end method
