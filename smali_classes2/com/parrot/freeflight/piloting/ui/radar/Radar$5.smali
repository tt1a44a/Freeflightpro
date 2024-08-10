.class Lcom/parrot/freeflight/piloting/ui/radar/Radar$5;
.super Ljava/lang/Object;
.source "Radar.java"

# interfaces
.implements Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/radar/Radar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$5;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChange(Z)V
    .locals 1
    .param p1, "gpsFixed"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$5;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1702(Lcom/parrot/freeflight/piloting/ui/radar/Radar;Z)Z

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$5;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$700(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 156
    return-void
.end method
