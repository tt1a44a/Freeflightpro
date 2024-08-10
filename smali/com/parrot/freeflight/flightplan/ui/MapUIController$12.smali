.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$12;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;->loadSavedPlan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$12;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 4

    .prologue
    .line 665
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$12;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$12;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoints()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$12;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPois()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$12;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/MapController;->displayFlightPlan(Ljava/util/List;Ljava/util/List;Z)V

    .line 666
    return-void
.end method
