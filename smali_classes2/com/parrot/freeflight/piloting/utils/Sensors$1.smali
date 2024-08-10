.class Lcom/parrot/freeflight/piloting/utils/Sensors$1;
.super Ljava/lang/Object;
.source "Sensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/utils/Sensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/utils/Sensors;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$1;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 68
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$1;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$000(Lcom/parrot/freeflight/piloting/utils/Sensors;)[F

    move-result-object v1

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$1;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$200(Lcom/parrot/freeflight/piloting/utils/Sensors;)V

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$1;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$300(Lcom/parrot/freeflight/piloting/utils/Sensors;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$1;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$302(Lcom/parrot/freeflight/piloting/utils/Sensors;Z)Z

    .line 83
    const-string v0, "Sensors"

    const-string v1, "Magnetometer sensor data is unreliable. Calibration is required!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors$1;->this$0:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/utils/Sensors;->access$100(Lcom/parrot/freeflight/piloting/utils/Sensors;)[F

    move-result-object v1

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
