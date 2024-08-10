.class Lcom/parrot/freeflight/blackbox/BlackboxManager$3;
.super Ljava/lang/Object;
.source "BlackboxManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;


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
    .line 99
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$600(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    check-cast p1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$502(Lcom/parrot/freeflight/blackbox/BlackboxManager;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$100(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->updateSkyControllerModel(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$600(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 112
    :cond_1
    return-void
.end method
