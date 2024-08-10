.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$600(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "valueUpdated":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$600(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->update(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Z

    move-result v0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$700(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$700(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->invalidate()V

    .line 186
    .end local v0    # "valueUpdated":Z
    :cond_1
    return-void
.end method
