.class Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;
.super Ljava/lang/Object;
.source "Radar.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;


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
    .line 69
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(FFFFFF)V
    .locals 6
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F
    .param p4, "fpvYaw"    # F
    .param p5, "fpvPitch"    # F
    .param p6, "fpvRoll"    # F

    .prologue
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 73
    .local v0, "now":J
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$000(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    float-to-double v4, p1

    invoke-static {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->access$102(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D

    .line 74
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$000(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    float-to-double v4, p2

    invoke-static {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->access$202(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D

    .line 75
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$000(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    float-to-double v4, p3

    invoke-static {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->access$302(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D

    .line 76
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$400(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    float-to-double v4, p4

    invoke-static {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->access$102(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D

    .line 77
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$400(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    float-to-double v4, p5

    invoke-static {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->access$202(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D

    .line 78
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$400(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    float-to-double v4, p6

    invoke-static {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->access$302(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D

    .line 79
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    float-to-double v4, p1

    invoke-static {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->access$102(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D

    .line 81
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    float-to-double v4, p2

    invoke-static {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->access$202(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D

    .line 82
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v2

    float-to-double v4, p3

    invoke-static {v2, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->access$302(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$600(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$700(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 86
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v2, v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$602(Lcom/parrot/freeflight/piloting/ui/radar/Radar;J)J

    .line 88
    :cond_1
    return-void
.end method
