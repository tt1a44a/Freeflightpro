.class Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$1;
.super Ljava/lang/Object;
.source "TelemetryUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChange(Z)V
    .locals 2
    .param p1, "gpsFixed"    # Z

    .prologue
    .line 53
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->access$000(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;I)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
