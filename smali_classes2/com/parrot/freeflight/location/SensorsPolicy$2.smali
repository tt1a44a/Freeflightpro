.class Lcom/parrot/freeflight/location/SensorsPolicy$2;
.super Ljava/lang/Object;
.source "SensorsPolicy.java"

# interfaces
.implements Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/location/SensorsPolicy;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/FollowMeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/location/SensorsPolicy;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/location/SensorsPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/location/SensorsPolicy$2;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 77
    const-string v0, "FF4.Location.Policy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChange visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$2;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->start()V

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$2;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->resume()V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$2;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->pause()V

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$2;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->stop()V

    goto :goto_0
.end method
