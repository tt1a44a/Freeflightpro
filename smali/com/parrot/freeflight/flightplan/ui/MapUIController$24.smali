.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;


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
    .line 1413
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMavlinkFileToSend(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->createMavlinkFile(Ljava/lang/String;)V

    .line 1445
    return-void
.end method

.method public onMavlinkStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1416
    packed-switch p1, :pswitch_data_0

    .line 1440
    :goto_0
    :pswitch_0
    return-void

    .line 1418
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$5102(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I

    .line 1419
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$5200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updatePlayButton(Z)V

    .line 1420
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 1425
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$5200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updatePlayButton(Z)V

    .line 1427
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$5300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11025b

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 1428
    .local v0, "sendingErrorSnackbar":Landroid/support/design/widget/Snackbar;
    const v1, 0x7f11064f

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 1434
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 1437
    .end local v0    # "sendingErrorSnackbar":Landroid/support/design/widget/Snackbar;
    :pswitch_3
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$5200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updatePlayButton(Z)V

    goto :goto_0

    .line 1416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
