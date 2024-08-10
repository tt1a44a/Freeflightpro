.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$6;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$6;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$6;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1602(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)I

    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$6;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1702(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)I

    .line 324
    return-void
.end method
