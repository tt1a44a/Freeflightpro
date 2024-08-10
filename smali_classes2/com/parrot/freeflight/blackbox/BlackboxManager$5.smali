.class Lcom/parrot/freeflight/blackbox/BlackboxManager$5;
.super Ljava/lang/Object;
.source "BlackboxManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/BlackboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$5;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$5;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$5;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$100(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$5;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->updateRemoteControllerInformation(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 146
    :cond_0
    return-void
.end method
