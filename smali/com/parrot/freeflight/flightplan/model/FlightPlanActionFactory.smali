.class public Lcom/parrot/freeflight/flightplan/model/FlightPlanActionFactory;
.super Ljava/lang/Object;
.source "FlightPlanActionFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlightPlanActionFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAction(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 4
    .param p0, "command"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    sget-object v1, Lcom/parrot/freeflight/flightplan/model/FlightPlanActionFactory$1;->$SwitchMap$com$parrot$freeflight$flightplan$mavlink$MavlinkCommand:[I

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 72
    const-string v1, "FlightPlanActionFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no action found for this ARMavlinkCommandEnum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-object v0

    .line 55
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;-><init>()V

    goto :goto_0

    .line 57
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;-><init>()V

    goto :goto_0

    .line 59
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;-><init>()V

    goto :goto_0

    .line 61
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;-><init>()V

    goto :goto_0

    .line 63
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;-><init>()V

    goto :goto_0

    .line 67
    :pswitch_6
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;-><init>()V

    goto :goto_0

    .line 69
    :pswitch_7
    const-string v1, "FlightPlanActionFactory"

    const-string v2, "Panorama or Tilt action ???"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static createAction(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 47
    :cond_1
    const-string v0, "FlightPlanActionFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no action found for type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 26
    :sswitch_0
    const-string v1, "Delay"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ImageStartCapture"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "ImageStopCapture"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "Landing"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "Panorama"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "Tilt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "TakeOff"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "VideoStartCapture"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "VideoStopCapture"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 28
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;-><init>()V

    goto :goto_1

    .line 30
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;-><init>()V

    goto :goto_1

    .line 32
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;-><init>()V

    goto :goto_1

    .line 34
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;-><init>()V

    goto :goto_1

    .line 36
    :pswitch_4
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;-><init>()V

    goto :goto_1

    .line 38
    :pswitch_5
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;-><init>()V

    goto :goto_1

    .line 40
    :pswitch_6
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;-><init>()V

    goto/16 :goto_1

    .line 42
    :pswitch_7
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;-><init>()V

    goto/16 :goto_1

    .line 44
    :pswitch_8
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;-><init>()V

    goto/16 :goto_1

    .line 26
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7be08277 -> :sswitch_8
        0x27c6dd -> :sswitch_5
        0x3edc963 -> :sswitch_0
        0x7247748 -> :sswitch_6
        0x3454555f -> :sswitch_1
        0x43a10a95 -> :sswitch_4
        0x601cd1f7 -> :sswitch_3
        0x61a11ca9 -> :sswitch_2
        0x61a2107f -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
