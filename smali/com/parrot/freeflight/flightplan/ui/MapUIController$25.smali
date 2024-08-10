.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;
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
    .line 1449
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedBridle()V
    .locals 4

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$5300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11025c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 1453
    .local v0, "bridleSnackbar":Landroid/support/design/widget/Snackbar;
    const v1, 0x7f1101ac

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$25$1;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$25$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 1459
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 1460
    return-void
.end method
