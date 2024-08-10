.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$2;
.super Ljava/lang/Object;
.source "FlightPlanGlScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeInformationObjectBetween(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

.field final synthetic val$informationObject:Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$2;->val$informationObject:Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene$2;->val$informationObject:Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->deleteGLResources()V

    .line 848
    return-void
.end method
