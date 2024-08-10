.class Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TelemetryUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryPhoneBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;->this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$1;

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;-><init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 547
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 548
    .local v0, "batteryLevel":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$BatteryPhoneBroadcastReceiver;->this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->access$400(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;I)V

    .line 549
    return-void
.end method
