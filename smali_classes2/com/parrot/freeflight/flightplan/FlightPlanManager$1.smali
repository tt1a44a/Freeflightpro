.class Lcom/parrot/freeflight/flightplan/FlightPlanManager$1;
.super Ljava/util/TimerTask;
.source "FlightPlanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/FlightPlanManager;->onPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/FlightPlanManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/FlightPlanManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->access$008(Lcom/parrot/freeflight/flightplan/FlightPlanManager;)J

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->access$100(Lcom/parrot/freeflight/flightplan/FlightPlanManager;)V

    .line 112
    return-void
.end method
