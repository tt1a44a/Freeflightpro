.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$13;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;->playFlightPlan()V
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
    .line 681
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$13;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$13;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->onCalibrationClicked()V

    .line 685
    return-void
.end method
