.class Lcom/parrot/freeflight/location/SensorsPolicy$5;
.super Ljava/lang/Object;
.source "SensorsPolicy.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/location/SensorsPolicy;
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
    .line 293
    iput-object p1, p0, Lcom/parrot/freeflight/location/SensorsPolicy$5;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

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
    .line 296
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$5;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-static {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->access$500(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$5;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-static {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->access$500(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$5;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-static {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->access$500(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/location/SensorsPolicy$5;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-static {v1}, Lcom/parrot/freeflight/location/SensorsPolicy;->access$600(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$5;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    check-cast p1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/location/SensorsPolicy;->access$502(Lcom/parrot/freeflight/location/SensorsPolicy;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$5;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-static {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->access$500(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$5;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-static {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->access$500(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/location/SensorsPolicy$5;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-static {v1}, Lcom/parrot/freeflight/location/SensorsPolicy;->access$600(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 305
    :cond_1
    return-void
.end method
