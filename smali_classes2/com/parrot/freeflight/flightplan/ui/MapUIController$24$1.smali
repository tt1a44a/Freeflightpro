.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$24$1;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->onMavlinkStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24$1;->this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24$1;->this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->playFlightPlan()V

    .line 1432
    return-void
.end method
