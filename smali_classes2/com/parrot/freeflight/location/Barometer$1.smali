.class Lcom/parrot/freeflight/location/Barometer$1;
.super Ljava/lang/Object;
.source "Barometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/location/Barometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/location/Barometer;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/location/Barometer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/location/Barometer;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/location/Barometer$1;->this$0:Lcom/parrot/freeflight/location/Barometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 41
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 25
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer$1;->this$0:Lcom/parrot/freeflight/location/Barometer;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/parrot/freeflight/location/Barometer;->access$002(Lcom/parrot/freeflight/location/Barometer;F)F

    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer$1;->this$0:Lcom/parrot/freeflight/location/Barometer;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/location/Barometer;->access$102(Lcom/parrot/freeflight/location/Barometer;J)J

    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer$1;->this$0:Lcom/parrot/freeflight/location/Barometer;

    invoke-static {v0}, Lcom/parrot/freeflight/location/Barometer;->access$200(Lcom/parrot/freeflight/location/Barometer;)Lcom/parrot/freeflight/location/Barometer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer$1;->this$0:Lcom/parrot/freeflight/location/Barometer;

    invoke-static {v0}, Lcom/parrot/freeflight/location/Barometer;->access$200(Lcom/parrot/freeflight/location/Barometer;)Lcom/parrot/freeflight/location/Barometer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/location/Barometer$1;->this$0:Lcom/parrot/freeflight/location/Barometer;

    invoke-static {v1}, Lcom/parrot/freeflight/location/Barometer;->access$000(Lcom/parrot/freeflight/location/Barometer;)F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/location/Barometer$1;->this$0:Lcom/parrot/freeflight/location/Barometer;

    invoke-static {v2}, Lcom/parrot/freeflight/location/Barometer;->access$100(Lcom/parrot/freeflight/location/Barometer;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/parrot/freeflight/location/Barometer$Listener;->onChange(FJ)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
