.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/location/SmartLocationManager;Landroid/view/View;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/IMapView;Lcom/parrot/freeflight/map/RadarMapView;Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;ZZ)V
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
    .line 293
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 298
    :pswitch_0
    if-eqz p3, :cond_0

    .line 299
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->changeAltitude(I)V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInPilotedPOIMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInMoveToMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    if-eqz p3, :cond_0

    .line 311
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I

    move-result v2

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changePointAltitude(IIF)V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1402(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I

    .line 320
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changePointHeightEnded(IIFF)V

    .line 325
    return-void
.end method
