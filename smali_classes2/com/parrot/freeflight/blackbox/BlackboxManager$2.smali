.class Lcom/parrot/freeflight/blackbox/BlackboxManager$2;
.super Ljava/lang/Object;
.source "BlackboxManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


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
    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$300(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$100(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->stopRecording()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    check-cast p1, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$202(Lcom/parrot/freeflight/blackbox/BlackboxManager;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$402(Lcom/parrot/freeflight/blackbox/BlackboxManager;Z)Z

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$300(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 95
    :cond_1
    return-void
.end method
