.class Lcom/parrot/freeflight/piloting/ui/radar/Radar$4;
.super Ljava/lang/Object;
.source "Radar.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


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
    .line 138
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$4;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$4;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$4;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1600(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$4;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$4;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getGpsFixStatus()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1702(Lcom/parrot/freeflight/piloting/ui/radar/Radar;Z)Z

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$4;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$700(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 147
    :cond_1
    return-void

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
