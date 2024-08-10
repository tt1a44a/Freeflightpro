.class Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$1;
.super Ljava/lang/Object;
.source "BlackboxRecorder.java"

# interfaces
.implements Lcom/parrot/freeflight/location/SmartLocationManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$1;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$1;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$002(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;Landroid/location/Location;)Landroid/location/Location;

    .line 121
    return-void
.end method

.method public onHomeLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 126
    return-void
.end method

.method public onRotationChanged(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 131
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 136
    return-void
.end method
