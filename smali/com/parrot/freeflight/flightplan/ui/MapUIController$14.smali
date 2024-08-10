.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$14;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showPoiNotSupportedWarningDialog()V
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
    .line 718
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$14;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$14;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$14;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$14;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->requestPlayOrPause(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 722
    :cond_0
    return-void
.end method
